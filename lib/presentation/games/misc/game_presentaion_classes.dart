import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/core/value_objects.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/domain/game/game_details.dart';
import 'package:gamifier/domain/game/game_keys.dart';
import 'package:gamifier/domain/game/game_todo.dart';
import 'package:gamifier/domain/game/user_games_list.dart';
import 'package:gamifier/domain/game/user_score.dart';
import 'package:kt_dart/kt.dart';

part 'game_presentaion_classes.freezed.dart';

@freezed
abstract class GamePrimitive implements _$GamePrimitive {
  const GamePrimitive._();
  const factory GamePrimitive(
      {required String id,
      required String admin,
      required List<String> usersId,
      required String name,
      required int noOfUsers,
      required List<GameTodoPrimitive> gameTodos}) = _GamePrimitive;

// TODO delete
  factory GamePrimitive.empty() => const GamePrimitive(
      id: '',
      admin: '',
      usersId: <String>[],
      noOfUsers: 1,
      name: '',
      gameTodos: <GameTodoPrimitive>[]);

  factory GamePrimitive.fromDomain(Game game) => GamePrimitive(
      id: game.id.value,
      admin: game.admin.value,
      usersId: game.usersId.map((e) => e.value).asList(),
      name: game.name,
      noOfUsers: game.noOfUsers,
      gameTodos: game.gameTodos
          .map((gameTodo) => GameTodoPrimitive.fromDomain(gameTodo))
          .asList());

  Game toDomain() {
    return Game(
        id: UniqueId.fromUniqueString(id),
        admin: UniqueId.fromUniqueString(admin),
        usersId:
            usersId.map((e) => UniqueId.fromUniqueString(e)).toImmutableList(),
        name: name,
        noOfUsers: noOfUsers,
        gameTodos: gameTodos
            .map((gameTodosDTO) => gameTodosDTO.toDomain())
            .toImmutableList());
  }
}

@freezed
abstract class GameTodoPrimitive implements _$GameTodoPrimitive {
  const GameTodoPrimitive._();
  const factory GameTodoPrimitive({
    required String id,
    required String todoName,
    required int times,
    required int points,
    required bool done,
  }) = _GameTodoPrimitive;

  // TODO delete
  factory GameTodoPrimitive.empty() => const GameTodoPrimitive(
      id: '', todoName: '', times: 0, points: 100, done: false);

  factory GameTodoPrimitive.fromDomain(GameTodo gameTodo) => GameTodoPrimitive(
      id: gameTodo.id.value,
      todoName: gameTodo.todoName,
      times: gameTodo.times,
      points: gameTodo.points,
      done: gameTodo.done);
  GameTodo toDomain() {
    return GameTodo(
        id: UniqueId.fromUniqueString(id),
        todoName: todoName,
        times: times,
        points: points,
        done: done);
  }
}

@freezed
abstract class UserScorePrimitive implements _$UserScorePrimitive {
  const UserScorePrimitive._();
  const factory UserScorePrimitive(
      {required String gameId,
      required String gamifierUserId,
      required String userName,
      required int level,
      required List<GameTodoPrimitive> gameTodos}) = _UserScorePrimitive;

  factory UserScorePrimitive.empty() => const UserScorePrimitive(
      gameId: '',
      gamifierUserId: '',
      userName: '',
      level: 0,
      gameTodos: <GameTodoPrimitive>[]);

  factory UserScorePrimitive.fromDomain(UserScore score) => UserScorePrimitive(
      gameId: score.gameId.value,
      gamifierUserId: score.gamifierUserId.value,
      userName: score.userName,
      level: score.level,
      gameTodos: score.gameTodos
          .map((gameTodo) => GameTodoPrimitive.fromDomain(gameTodo))
          .asList());

  UserScore toDomain() {
    return UserScore(
        gameId: UniqueId.fromUniqueString(gameId),
        gamifierUserId: UniqueId.fromUniqueString(gamifierUserId),
        userName: userName,
        level: level,
        gameTodos: gameTodos
            .map((gameTodosDTO) => gameTodosDTO.toDomain())
            .toImmutableList());
  }
}

@freezed
abstract class UserGamesListPrimitive implements _$UserGamesListPrimitive {
  const UserGamesListPrimitive._();
  const factory UserGamesListPrimitive(
      {required String userId,
      required List<GameKeyPrimitive> gamekeys}) = _UserGamesListPrimitive;

  factory UserGamesListPrimitive.fromDomain(UserGamesList userGamesList) =>
      UserGamesListPrimitive(
          userId: userGamesList.userId.value,
          gamekeys: userGamesList.gamekeys
              .map((e) => GameKeyPrimitive.fromDomain(e))
              .asList());

  UserGamesList toDomain() => UserGamesList(
      userId: UniqueId.fromUniqueString(userId),
      gamekeys: gamekeys.map((e) => e.toDomain()).toImmutableList());
}

@freezed
abstract class GameKeyPrimitive implements _$GameKeyPrimitive {
  const GameKeyPrimitive._();
  const factory GameKeyPrimitive(
      {required String gameId, required String gameName}) = _GameKeyPrimitive;

  factory GameKeyPrimitive.fromDomain(GameKey gameKey) => GameKeyPrimitive(
      gameId: gameKey.gameId.value, gameName: gameKey.gameName);

  GameKey toDomain() =>
      GameKey(gameId: UniqueId.fromUniqueString(gameId), gameName: gameName);
}

@freezed
abstract class GameDetailsPrimitive with _$GameDetailsPrimitive {
  const GameDetailsPrimitive._();
  const factory GameDetailsPrimitive(
      {required GamePrimitive game,
      required List<UserScorePrimitive> usersScores}) = _GameDetailsPrimitive;

  factory GameDetailsPrimitive.fromDomain(GameDetails details) =>
      GameDetailsPrimitive(
          game: GamePrimitive.fromDomain(details.game),
          usersScores: details.usersScores
              .map((e) => UserScorePrimitive.fromDomain(e))
              .asList());

  GameDetails toDomain() {
    return GameDetails(
        game: game.toDomain(),
        usersScores: usersScores
            .map((userScore) => userScore.toDomain())
            .toImmutableList());
  }
}
