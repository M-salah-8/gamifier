import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:gamifier/domain/game/game_details.dart';
import 'package:gamifier/domain/game/game_failure.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:dartz/dartz.dart';
import 'package:gamifier/domain/game/game_keys.dart';
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
    // frist get the game
    final gameFS = await _firestore.collection('games').doc(gameid).get();
    final gameDTO = GameDTO.fromFirestore(gameFS);
    final game = gameDTO.toDomain();

    // second get users scores list
    final gameUsersScoresQuery = await _firestore
        .collection('games_users')
        .where('gameId', isEqualTo: gameid)
        .get();
    // transform the query to DTO and then to UserScore list
    final usersScores = gameUsersScoresQuery.docs
        .map((e) => UserScoreTDO.fromFirestore(e).toDomain())
        .toImmutableList();
    // combine to get the game details
    return GameDetails(game: game, usersScores: usersScores);
  }

  @override
  Future<void> addFriend(Game game, GamifierUser friend) async {
    final friendTDO = GamifierUserTDO.fromDomain(friend);
    final gameDTO = GameDTO.fromDomain(game);
    // #### adding new game key to the friend
    await _firestore
        .collection('users')
        .doc(friendTDO.id)
        .collection('user_games_list')
        .doc(gameDTO.id)
        .set(GameKeyTDO(gameId: gameDTO.id, gameName: gameDTO.name).toJson());
    // #### change
  }

  @override
  Future<Either<GameFailure, Unit>> create(
      Game game, GamifierUser currentUser) async {
    // TODO: implement create
    try {
      // add current user as admin and to the list of users id
      final admin = GamifierUserTDO.fromDomain(currentUser).id;
      final GameDTO gameDTO =
          GameDTO.fromDomain(game).copyWith(admin: admin, usersId: [admin]);
      // creating a new game doc with the id from new game
      await _firestore
          .collection('games')
          .doc(gameDTO.id)
          .set(gameDTO.toJson());
      // #### adding new game key to the creater

      // TODO better way?
      // final userGamesListRef =
      await _firestore
          .collection('users')
          .doc(admin)
          .collection('user_games_list')
          .doc(gameDTO.id)
          .set(GameKeyTDO(gameId: gameDTO.id, gameName: gameDTO.name).toJson());

      // #### add admen as new user(player) to the game to set his scores
      // create a unique id from compining the ids of game and user to make the
      // search proces easy
      final docId = gameDTO.id + admin;
      final gameUser = _firestore.collection('games_users').doc(docId);
      await gameUser.set(UserScoreTDO(
              gameId: gameDTO.id,
              gamifierUserId: admin,
              userName: currentUser.name,
              level: 0,
              gameTodos: gameDTO.gameTodos)
          .toJson());
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
  Future<Either<GameFailure, Unit>> update(Game game) async {
    // TODO: implement delete
    try {
      final gameDTO = GameDTO.fromDomain(game);
      final gameId = gameDTO.id;
      // ### delete the game from game collection
      await _firestore.collection('games').doc(gameDTO.id).delete();
      // ### get the list of users
      gameDTO.usersId.map((user) async {
        // delete the game key for every one
        await _firestore
            .collection('users')
            .doc(user)
            .collection('user_games_list')
            .doc(gameDTO.id)
            .delete();
        // delete the scores for all users
        await _firestore
            .collection('games_users')
            .doc(gameDTO.id + user)
            .delete();
      });

      await _firestore
          .collection('games')
          .doc(gameDTO.id)
          .update(gameDTO.toJson());
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
  Future<Either<GameFailure, Unit>> delete(Game game) async {
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
}
