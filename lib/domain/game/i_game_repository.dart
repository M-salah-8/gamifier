import 'package:dartz/dartz.dart';
import 'package:gamifier/domain/core/value_objects.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/domain/game/game_details.dart';
import 'package:gamifier/domain/game/game_failure.dart';
import 'package:gamifier/domain/game/game_keys.dart';
import 'package:gamifier/domain/game/game_todo.dart';
import 'package:gamifier/domain/user/gamifier_user.dart';
import 'package:kt_dart/collection.dart';

abstract class IGameRepository {
  Stream<Either<GameFailure, KtList<GameKey>>> watchGames(
      GamifierUser currentUser);
  Future<GameDetails> gameDetails(String gameid);
  Future<Either<String, Unit>> addFriend(
      Game game, GamifierUser friend, String adminName);
  Future<Either<GameFailure, Unit>> create(Game game, GamifierUser admin);
  Future<Either<GameFailure, Unit>> update(Game game);
  Future<Either<GameFailure, Unit>> delete(Game game);
  // for editing the game
  Future<void> changeGameName(Game game, String newName);
  Future<void> editTodos(Game game, KtList<GameTodo> todos);
  Future<void> addTodos(Game game, KtList<GameTodo> todos);
  Future<void> deleteTodos(Game game, KtList<GameTodo> todos);
  // handel scores
  Future<void> todoChecked(
      UniqueId gameId, UniqueId user, GameTodo todo, int level);
}
