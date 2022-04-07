import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/core/value_objects.dart';
import 'package:gamifier/domain/game/game_todo.dart';

part 'game_todo_primitive.freezed.dart';

@freezed
abstract class GameTodoPrimitive implements _$GameTodoPrimitive {
  const GameTodoPrimitive._();
  const factory GameTodoPrimitive({
    required String id,
    required String todoName,
    required int times,
    required int points,
    required bool done,
  }) = _GameTodoDTO;

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
