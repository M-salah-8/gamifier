import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/core/value_objects.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/domain/game/game_todo.dart';
import 'package:kt_dart/kt.dart';

part 'game_tdo.g.dart';
part 'game_tdo.freezed.dart';

@freezed
abstract class GameDTO implements _$GameDTO {
  const GameDTO._();
  const factory GameDTO(
      {required String id,
      required String name,
      required List<GameTodoDTO> gameTodos}) = _GameDTO;

  factory GameDTO.fromDomain(Game game) => GameDTO(
      id: game.id.value,
      name: game.name,
      gameTodos: game.gameTodos
          .map((gameTodo) => GameTodoDTO.fromDomain(gameTodo))
          .asList());
  Game toDomain() {
    return Game(
        id: UniqueId.fromUniqueString(id),
        name: name,
        gameTodos: gameTodos
            .map((gameTodosDTO) => gameTodosDTO.toDomain())
            .toImmutableList());
  }

  factory GameDTO.fromJson(Map<String, dynamic> json) =>
      _$GameDTOFromJson(json);

  factory GameDTO.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> docMap = doc.data() as Map<String, dynamic>;
    docMap['id'] = doc.id;
    // addAll(<String, dynamic>{'id': '3424234234'})
    // as Map<String, dynamic>;
    print(docMap);
    Map<String, dynamic> mp = {
      'gameTodos': [
        {
          "todoName": "do this",
          'times': 2,
          'id': '6789',
          'done': false,
          'points': 10
        }
      ],
      'name': 'coding',
      'id': '1234567'
    };

    // print('======================${GameDTO.fromJson()}');
    // GameDTO notdto = GameDTO.fromJson(docMap).copyWith(id: doc.id);
    // Game not = notdto.toDomain();
    // print(
    // '===========================================${GameDTO.fromJson(docMap).copyWith(id: doc.id)}');
    return GameDTO.fromJson(docMap);
  }
}

@freezed
abstract class GameTodoDTO implements _$GameTodoDTO {
  const GameTodoDTO._();
  const factory GameTodoDTO({
    required String id,
    required String todoName,
    required int times,
    required int points,
    required bool done,
  }) = _GameTodoDTO;

  factory GameTodoDTO.fromDomain(GameTodo gameTodo) => GameTodoDTO(
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

  factory GameTodoDTO.fromJson(Map<String, dynamic> json) =>
      _$GameTodoDTOFromJson(json);
}
