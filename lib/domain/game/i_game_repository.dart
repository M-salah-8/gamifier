import 'package:dartz/dartz.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/domain/game/game_details.dart';
import 'package:gamifier/domain/game/game_failure.dart';
import 'package:gamifier/domain/game/game_keys.dart';
import 'package:gamifier/domain/user/gamifier_user.dart';
import 'package:kt_dart/collection.dart';

abstract class IGameRepository {
  Stream<Either<GameFailure, KtList<GameKey>>> watchGames(
      GamifierUser currentUser);
  Future<GameDetails> gameDetails(String gameid);
  Future<void> addFriend(Game game, GamifierUser friend);
  Future<Either<GameFailure, Unit>> create(Game game, GamifierUser admin);
  Future<Either<GameFailure, Unit>> update(Game game);
  Future<Either<GameFailure, Unit>> delete(Game game);
}
