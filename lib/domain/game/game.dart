import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/core/value_objects.dart';
import 'package:gamifier/domain/game/game_todo.dart';
import 'package:kt_dart/collection.dart';
part 'game.freezed.dart';

@freezed
class Game with _$Game {
  const factory Game(
      {required UniqueId id,
      required String name,
      required KtList<GameTodo> gameTodos}) = _Game;
  factory Game.empty() =>
      Game(id: UniqueId(), name: '', gameTodos: emptyList());
}
