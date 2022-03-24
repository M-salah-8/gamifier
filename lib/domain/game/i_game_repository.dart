import 'package:dartz/dartz.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/domain/game/game_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class IGameRepository {
  Stream<Either<GameFailure, KtList<Game>>> watch();
  Future<Either<GameFailure, Unit>> create(Game note);
  Future<Either<GameFailure, Unit>> update(Game note);
  Future<Either<GameFailure, Unit>> delete(Game note);
}
