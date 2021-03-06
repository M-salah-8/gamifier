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
      required String adminName,
      required String name,
      required KtList<UniqueId> usersId,
      required int noOfUsers,
      required KtList<GameTodo> gameTodos}) = _Game;
  factory Game.empty() => Game(
      id: UniqueId(),
      // provided from bloc to repository when creating the game
      admin: UniqueId.fromUniqueString('admin'),
      usersId: emptyList<UniqueId>(),
      noOfUsers: 1,
      name: '',
      adminName: '',
      gameTodos: const KtList<GameTodo>.empty());
}
