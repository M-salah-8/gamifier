import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/core/value_objects.dart';
part 'game_todo.freezed.dart';

@freezed
class GameTodo with _$GameTodo {
  const factory GameTodo({
    required UniqueId id,
    required String todoName,
    required int times,
    required int points,
    required bool done,
  }) = _GameTodo;
  factory GameTodo.empty() => GameTodo(
      id: UniqueId(), todoName: '', times: 0, points: 100, done: false);
}
