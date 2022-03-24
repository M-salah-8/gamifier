import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:gamifier/domain/game/game_failure.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:dartz/dartz.dart';
import 'package:gamifier/domain/game/i_game_repository.dart';
import 'package:gamifier/infrastructure/core/firestore_helpers.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import 'game_tdo.dart';

@LazySingleton(as: IGameRepository)
class GameRepository implements IGameRepository {
  final FirebaseFirestore _firestore;
  GameRepository(this._firestore);

  @override
  Stream<Either<GameFailure, KtList<Game>>> watch() async* {
    final userDoc = await _firestore.userDocument();
    final notesStream = userDoc.gameCollection.snapshots().map((snapShot) =>
        right<GameFailure, KtList<Game>>(snapShot.docs
            .map((doc) => GameDTO.fromFirestore(doc).toDomain())
            .toImmutableList()));
    yield* notesStream.onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const GameFailure.insufficientPermission());
      } else {
        return left(const GameFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<GameFailure, Unit>> create(Game game) async {
    // TODO: implement create
    try {
      final userDoc = await _firestore.userDocument();
      final gameDTO = GameDTO.fromDomain(game);
      await userDoc.gameCollection.doc(gameDTO.id).set(gameDTO.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const GameFailure.insufficientPermission());
      } else {
        // log.error(e.toString());
        return left(const GameFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<GameFailure, Unit>> update(Game game) async {
    // TODO: implement delete

    try {
      final userDoc = await _firestore.userDocument();
      final gameDTO = GameDTO.fromDomain(game);
      await userDoc.gameCollection.doc(gameDTO.id).update(gameDTO.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const GameFailure.insufficientPermission());
      } else {
        return left(const GameFailure.unableToUpdate());
      }
    }
  }

  @override
  Future<Either<GameFailure, Unit>> delete(Game game) async {
    // TODO: implement update
    // TODO: suitable exciptions
    try {
      final userDoc = await _firestore.userDocument();
      final gameId = game.id.value;
      await userDoc.gameCollection.doc(gameId).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const GameFailure.insufficientPermission());
      } else {
        return left(const GameFailure.unableToUpdate());
      }
    }
  }
}
