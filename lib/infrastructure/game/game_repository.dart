import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:gamifier/domain/core/value_objects.dart';
import 'package:gamifier/domain/game/game_details.dart';
import 'package:gamifier/domain/game/game_failure.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:dartz/dartz.dart';
import 'package:gamifier/domain/game/game_keys.dart';
import 'package:gamifier/domain/game/game_todo.dart';
import 'package:gamifier/domain/game/i_game_repository.dart';
import 'package:gamifier/domain/user/gamifier_user.dart';
import 'package:gamifier/infrastructure/gamifier_user/gamifier_user_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';
import 'game_tdo.dart';

@LazySingleton(as: IGameRepository)
class GameRepository implements IGameRepository {
  final FirebaseFirestore _firestore;
  GameRepository(this._firestore);

  @override
  Stream<Either<GameFailure, KtList<GameKey>>> watchGames(
      GamifierUser currentUser) async* {
    final docId = GamifierUserTDO.fromDomain(currentUser).id;
    // read user
    final userDoc =
        _firestore.collection('users').doc(docId).collection('user_games_list');
    // final userDoc = await _firestore.userDocument();
    // to get games real time
    final gamesStream = userDoc.snapshots().map((snapShot) =>
        right<GameFailure, KtList<GameKey>>(snapShot.docs
            .map((doc) => GameKeyTDO.fromFirestore(doc).toDomain())
            .toImmutableList()));
    yield* gamesStream.onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const GameFailure.insufficientPermission());
      } else {
        return left(const GameFailure.unexpected());
      }
    });
  }

  @override
  Future<GameDetails> gameDetails(String gameid) async {
    // #### frist get the game (with the todos)
    // todos
    final gameTodosFS = await _firestore
        .collection('games')
        .doc(gameid)
        .collection('game_todos')
        .get();
    final gameTodos =
        gameTodosFS.docs.map((e) => GameTodoTDO.fromFirestore(e)).toList();
    // game
    final gameFS = await _firestore.collection('games').doc(gameid).get();
    final gameDTO = GameDTO.fromFirestore(gameFS, gameTodos);
    final game = gameDTO.toDomain();

    // second get users scores list
    // for each user get todos and score then combine
    // TODO fix to get only the scores with out todos (will require alot of logic)
    final scoresList = await Future.wait(gameDTO.usersId.map((userId) async {
      // get todo for user
      final gameUsersScoresRef = _firestore
          .collection('games')
          .doc(gameid)
          .collection('scores')
          .doc(userId);
      final userTodosFS =
          await gameUsersScoresRef.collection('game_todos').get();
      final gameTodos =
          userTodosFS.docs.map((e) => GameTodoTDO.fromFirestore(e)).toList();
      // get score for user
      final scoreMinTodo = await gameUsersScoresRef.get();
      final score =
          UserScoreTDO.fromFirestore(scoreMinTodo, gameTodos).toDomain();
      return score;
    }));
    // transform the query to DTO and then to UserScore list
    final usersScores = scoresList.toImmutableList();
    // combine to get the game details
    final gameDetails = GameDetails(game: game, usersScores: usersScores);
    return gameDetails;
  }

  @override
  Future<Either<String, Unit>> addFriend(
      Game game, GamifierUser friend, String adminName) async {
    final friendTDO = GamifierUserTDO.fromDomain(friend);
    final gameDTO = GameDTO.fromDomain(game);
    // #### check if friend is allready playing
    final isFriendPlaying =
        gameDTO.usersId.any((userId) => userId == friendTDO.id);
    if (isFriendPlaying) {
      return left('allready playing');
    } else {
      // #### adding new game key to the friend
      await _firestore
          .collection('users')
          .doc(friendTDO.id)
          .collection('user_games_list')
          .doc(gameDTO.id)
          .set(GameKeyTDO(
                  gameId: gameDTO.id,
                  gameName: gameDTO.name,
                  creater: adminName,
                  createrId: gameDTO.admin)
              .toJson());
      // #### change number of users in game and add friend to users id list
      final usersList = gameDTO.usersId..add(friendTDO.id);
      await _firestore.collection('games').doc(gameDTO.id).update(gameDTO
          .copyWith(noOfUsers: gameDTO.noOfUsers + 1, usersId: usersList)
          .toJson()
        ..remove('gameTodos'));
      //  #### set scores file to friend
      final userScoresRef = _firestore
          .collection('games')
          .doc(gameDTO.id)
          .collection('scores')
          .doc(friendTDO.id);
      // first the score without the todos
      final userScoresTDO = UserScoreTDO(
          gameId: gameDTO.id,
          gamifierUserId: friendTDO.id,
          userName: friendTDO.name,
          level: 0,
          gameTodos: gameDTO.gameTodos);
      final userScores = userScoresTDO.toJson();
      final scoreMinTodos = userScores..remove('gameTodos');
      await userScoresRef.set(scoreMinTodos);
      // second set the todos
      userScoresTDO.gameTodos.forEach((gametodo) async {
        await userScoresRef
            .collection('game_todos')
            .doc(gametodo.id)
            .set(gametodo.toJson());
      });
      return right(unit);
    }
  }

  @override
  Future<Either<GameFailure, Unit>> create(
      Game game, GamifierUser currentUser) async {
    // TODO: implement create
    try {
      // #### add current user as admin and to the list of users id
      final admin = GamifierUserTDO.fromDomain(currentUser);
      final GameDTO gameDTO = GameDTO.fromDomain(game).copyWith(
          admin: admin.id, adminName: admin.name, usersId: [admin.id]);
      // #### creating a new game doc with the id from new game
      // add the game without the todos then add the todos in saperate
      // collection
      // set the game
      final gameMinTodos = gameDTO.toJson()..remove('gameTodos');
      await _firestore.collection('games').doc(gameDTO.id).set(gameMinTodos);
      // set game todos
      gameDTO.gameTodos.forEach((gameTodo) async {
        await _firestore
            .collection('games')
            .doc(gameDTO.id)
            .collection('game_todos')
            .doc(gameTodo.id)
            .set(gameTodo.toJson());
      });
      // #### adding new game key to the creater
      await _firestore
          .collection('users')
          .doc(admin.id)
          .collection('user_games_list')
          .doc(gameDTO.id)
          .set(GameKeyTDO(
                  gameId: gameDTO.id,
                  gameName: gameDTO.name,
                  creater: admin.name,
                  createrId: admin.id)
              .toJson());

      // #### add admen as new user(player) to the game to set his scores
      // put the todos in saperate collection
      final userScoresRef = _firestore
          .collection('games')
          .doc(gameDTO.id)
          .collection('scores')
          .doc(admin.id);
      // first the score without the todos
      final userScoresTDO = UserScoreTDO(
          gameId: gameDTO.id,
          gamifierUserId: admin.id,
          userName: currentUser.name,
          level: 0,
          gameTodos: gameDTO.gameTodos);
      final userScores = userScoresTDO.toJson();
      final scoreMinTodos = userScores..remove('gameTodos');
      await userScoresRef.set(scoreMinTodos);
      // second set the todos
      userScoresTDO.gameTodos.forEach((gametodo) async {
        await userScoresRef
            .collection('game_todos')
            .doc(gametodo.id)
            .set(gametodo.toJson());
      });
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const GameFailure.insufficientPermission());
      } else {
        return left(const GameFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<GameFailure, Unit>> delete(Game game) async {
    // TODO: implement delete
    try {
      final gameDTO = GameDTO.fromDomain(game);
      // ### delete the game from game collection
      await _firestore.collection('games').doc(gameDTO.id).delete();
      // ### get the list of users to delete game keys and scores
      gameDTO.usersId.forEach(((user) async {
        // delete the game key for every user
        await _firestore
            .collection('users')
            .doc(user)
            .collection('user_games_list')
            .doc(gameDTO.id)
            .delete();
      }));
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const GameFailure.insufficientPermission());
      } else {
        return left(const GameFailure.unableToUpdate());
      }
    }
  }

  @override
  Future<Either<GameFailure, Unit>> update(Game game) async {
    // TODO: implement update
    // TODO: suitable exciptions
    try {
      final userDoc = _firestore.collection('games_users').doc();
      final gameId = game.id.value;
      // await userDoc.get(gameId).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const GameFailure.insufficientPermission());
      } else {
        return left(const GameFailure.unableToUpdate());
      }
    }
  }

  //////////////////////////// game editing functions /////////////////////

  @override
  Future<void> changeGameName(Game game, String newName) async {
    final gameDTO = GameDTO.fromDomain(game);
    // change name in main game file
    await _firestore
        .collection('games')
        .doc(gameDTO.id)
        .update({'name': newName});
// change the game name in games keys for every user
    gameDTO.usersId.forEach(((user) async {
      await _firestore
          .collection('users')
          .doc(user)
          .collection('user_games_list')
          .doc(gameDTO.id)
          .update({'gameName': newName});
    }));
  }

  @override
  Future<void> addTodos(Game game, KtList<GameTodo> todos) async {
    final gameDTO = GameDTO.fromDomain(game);
    final todosTDO = todos.map((e) => GameTodoTDO.fromDomain(e));
    // add new todos in game main file and users scores
    todosTDO.forEach((gameTodoTDO) async {
      // add new todo in game main file
      await _firestore
          .collection('games')
          .doc(gameDTO.id)
          .collection('game_todos')
          .doc(gameTodoTDO.id)
          .set(gameTodoTDO.toJson());
      // add todo for users
      gameDTO.usersId.forEach((user) async {
        await _firestore
            .collection('games')
            .doc(gameDTO.id)
            .collection('scores')
            .doc(user)
            .collection('game_todos')
            .doc(gameTodoTDO.id)
            .set(gameTodoTDO.toJson());
      });
    });
  }

  @override
  Future<void> deleteTodos(Game game, KtList<GameTodo> todos) async {
    final gameDTO = GameDTO.fromDomain(game);
    final todosTDO = todos.map((e) => GameTodoTDO.fromDomain(e));
    // delelte todos in game main file and users scores
    todosTDO.forEach((gameTodoTDO) async {
      // delelte todo in game main file
      await _firestore
          .collection('games')
          .doc(gameDTO.id)
          .collection('game_todos')
          .doc(gameTodoTDO.id)
          .delete();
      // delelte todo for users
      gameDTO.usersId.forEach((user) async {
        await _firestore
            .collection('games')
            .doc(gameDTO.id)
            .collection('scores')
            .doc(user)
            .collection('game_todos')
            .doc(gameTodoTDO.id)
            .delete();
      });
    });
  }

  @override
  Future<void> editTodos(Game game, KtList<GameTodo> todos) async {
    final gameDTO = GameDTO.fromDomain(game);
    final todosTDO = todos.map((e) => GameTodoTDO.fromDomain(e));
    // edit todos in game main
    todosTDO.forEach((gameTodoTDO) async {
      // edit todo in game main file
      await _firestore
          .collection('games')
          .doc(gameDTO.id)
          .collection('game_todos')
          .doc(gameTodoTDO.id)
          .update(
              {'todoName': gameTodoTDO.todoName, 'points': gameTodoTDO.points});
    });
  }

  //////////////////////// score operations
  @override
  Future<void> todoChecked(
      UniqueId gameId, UniqueId user, GameTodo todo, int level) async {
    final gameTodoTDO = GameTodoTDO.fromDomain(todo);
    // change user score by adding new level
    await _firestore
        .collection('games')
        .doc(gameId.value)
        .collection('scores')
        .doc(user.value)
        .update({'level': level});

    // change todo times in user score file by adding the new todo
    await _firestore
        .collection('games')
        .doc(gameId.value)
        .collection('scores')
        .doc(user.value)
        .collection('game_todos')
        .doc(gameTodoTDO.id)
        .update(gameTodoTDO.toJson());
  }
}
