import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/core/value_objects.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/domain/game/game_keys.dart';
import 'package:gamifier/domain/game/game_todo.dart';
import 'package:gamifier/domain/game/user_games_list.dart';
import 'package:gamifier/domain/game/user_score.dart';
import 'package:kt_dart/kt.dart';

part 'game_tdo.g.dart';
part 'game_tdo.freezed.dart';

@freezed
abstract class GameDTO implements _$GameDTO {
  const GameDTO._();
  const factory GameDTO(
      {required String id,
      required String admin,
      required String name,
      required int noOfUsers,
      required List<GameTodoTDO> gameTodos}) = _GameDTO;

  factory GameDTO.fromDomain(Game game) => GameDTO(
      id: game.id.value,
      admin: game.admin.value,
      name: game.name,
      noOfUsers: game.noOfUsers,
      gameTodos: game.gameTodos
          .map((gameTodo) => GameTodoTDO.fromDomain(gameTodo))
          .asList());

  Game toDomain() {
    return Game(
        id: UniqueId.fromUniqueString(id),
        admin: UniqueId.fromUniqueString(id),
        name: name,
        noOfUsers: noOfUsers,
        gameTodos: gameTodos
            .map((gameTodosDTO) => gameTodosDTO.toDomain())
            .toImmutableList());
  }

  factory GameDTO.fromJson(Map<String, dynamic> json) =>
      _$GameDTOFromJson(json);

  // TODO delete if not used
  factory GameDTO.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> docMap = doc.data() as Map<String, dynamic>;
    docMap['id'] = doc.id;
    return GameDTO.fromJson(docMap);
  }
}

@freezed
abstract class GameTodoTDO implements _$GameTodoTDO {
  const GameTodoTDO._();
  const factory GameTodoTDO({
    required String id,
    required String todoName,
    required int times,
    required int points,
    required bool done,
  }) = _GameTodoTDO;

  factory GameTodoTDO.fromDomain(GameTodo gameTodo) => GameTodoTDO(
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

  factory GameTodoTDO.fromJson(Map<String, dynamic> json) =>
      _$GameTodoTDOFromJson(json);
}

@freezed
abstract class UserScoreTDO implements _$UserScoreTDO {
  const UserScoreTDO._();
  const factory UserScoreTDO(
      {required String gameId,
      required String gamifierUserId,
      required int level,
      required List<GameTodoTDO> gameTodos}) = _UserScoreTDO;

  factory UserScoreTDO.fromDomain(UserScore score) => UserScoreTDO(
      gameId: score.gameId.value,
      gamifierUserId: score.gamifierUserId.value,
      level: score.level,
      gameTodos: score.gameTodos
          .map((gameTodo) => GameTodoTDO.fromDomain(gameTodo))
          .asList());

  UserScore toDomain() {
    return UserScore(
        gameId: UniqueId.fromUniqueString(gameId),
        gamifierUserId: UniqueId.fromUniqueString(gamifierUserId),
        level: level,
        gameTodos: gameTodos
            .map((gameTodosDTO) => gameTodosDTO.toDomain())
            .toImmutableList());
  }

  factory UserScoreTDO.fromJson(Map<String, dynamic> json) =>
      _$UserScoreTDOFromJson(json);
}

// TODO delete if not used
@freezed
abstract class UserGamesListTDO implements _$UserGamesListTDO {
  const UserGamesListTDO._();
  const factory UserGamesListTDO(
      {required String userId,
      required List<GameKeyTDO> gamekeys}) = _UserGamesListTDO;

  factory UserGamesListTDO.fromDomain(UserGamesList userGamesList) =>
      UserGamesListTDO(
          userId: userGamesList.userId.value,
          gamekeys: userGamesList.gamekeys
              .map((e) => GameKeyTDO.fromDomain(e))
              .asList());

  UserGamesList toDomain() => UserGamesList(
      userId: UniqueId.fromUniqueString(userId),
      gamekeys: gamekeys.map((e) => e.toDomain()).toImmutableList());

  factory UserGamesListTDO.fromJson(Map<String, dynamic> json) =>
      _$UserGamesListTDOFromJson(json);

  factory UserGamesListTDO.fromFirestore(doc) {
    Map<String, dynamic> docMap = doc as Map<String, dynamic>;
    return UserGamesListTDO.fromJson(docMap);
  }
}

@freezed
abstract class GameKeyTDO implements _$GameKeyTDO {
  const GameKeyTDO._();
  const factory GameKeyTDO({required String gameId, required String gameName}) =
      _GameKeyTDO;

  factory GameKeyTDO.fromDomain(GameKey gameKey) =>
      GameKeyTDO(gameId: gameKey.gameId.value, gameName: gameKey.gameName);

  GameKey toDomain() =>
      GameKey(gameId: UniqueId.fromUniqueString(gameId), gameName: gameName);

  factory GameKeyTDO.fromJson(Map<String, dynamic> json) =>
      _$GameKeyTDOFromJson(json);

  factory GameKeyTDO.fromFirestore(doc) {
    Map<String, dynamic> docMap = doc.data() as Map<String, dynamic>;
    return GameKeyTDO.fromJson(docMap);
  }
}
