import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/core/value_objects.dart';
import 'package:gamifier/domain/game/game_todo.dart';
import 'package:kt_dart/collection.dart';
part 'game.freezed.dart';

// games aspect constant for all users
@freezed
class Game with _$Game {
  const factory Game(
      {required UniqueId id,
      required UniqueId admin,
      required String name,
      required int noOfUsers,
      required KtList<GameTodo> gameTodos}) = _Game;
  factory Game.empty() => Game(
      id: UniqueId(),
      // provided from bloc to repository when creating the game
      admin: UniqueId.fromUniqueString('admin'),
      noOfUsers: 1,
      name: '',
      gameTodos: const KtList<GameTodo>.empty());
}
