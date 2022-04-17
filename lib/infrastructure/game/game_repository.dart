import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:gamifier/domain/game/game_failure.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:dartz/dartz.dart';
import 'package:gamifier/domain/game/game_keys.dart';
import 'package:gamifier/domain/game/i_game_repository.dart';
import 'package:gamifier/domain/user/gamifier_user.dart';
import 'package:gamifier/infrastructure/gamifier_user/gamifier_user_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import 'game_tdo.dart';

@LazySingleton(as: IGameRepository)
class GameRepository implements IGameRepository {
  final FirebaseFirestore _firestore;
  GameRepository(this._firestore);

  @override
  Stream<Either<GameFailure, KtList<GameKey>>> watchGames(
      GamifierUser currentUser) async* {
    final docId = GamifierUserTDO.fromDomain(currentUser).id;
    // read user
    final userDoc =
        _firestore.collection('users').doc(docId).collection('user_games_list');
    // final userDoc = await _firestore.userDocument();
    // to get games real time
    final gamesStream = userDoc.snapshots().map((snapShot) =>
        right<GameFailure, KtList<GameKey>>(snapShot.docs
            .map((doc) => GameKeyTDO.fromFirestore(doc).toDomain())
            .toImmutableList()));
    yield* gamesStream.onErrorReturnWith((e, stackTrace) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const GameFailure.insufficientPermission());
      } else {
        return left(const GameFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<GameFailure, Unit>> create(
      Game game, GamifierUser currentUser) async {
    // TODO: implement create
    try {
      // setting the admin as the current user
      final admin = GamifierUserTDO.fromDomain(currentUser).id;
      final gameDTO = GameDTO.fromDomain(game).copyWith(admin: admin);
      // creating a new game doc with the id from new game
      await _firestore
          .collection('games')
          .doc(gameDTO.id)
          .set(gameDTO.toJson());
      // #### adding new game key to the creater

      // TODO better way?
      // final userGamesListRef =
      await _firestore
          .collection('users')
          .doc(admin)
          .collection('user_games_list')
          .doc(gameDTO.id)
          .set(GameKeyTDO(gameId: gameDTO.id, gameName: gameDTO.name).toJson());
      // get old games list and add the new game
      // final userGamesList = await userGamesListRef.get();
      // final userKeys =
      //     UserGamesListTDO.fromJson(userGamesList.data()!).gamekeys;
      // userKeys.add();
      // // update with the new list
      // await userGamesListRef
      //     .update(UserGamesListTDO(userId: admin, gamekeys: userKeys).toJson());

      // #### add admen as new user(player) to the game to set his scores
      final gameUser = _firestore.collection('games_users').doc();
      await gameUser.set(UserScoreTDO(
              gameId: gameDTO.id,
              gamifierUserId: admin,
              level: 0,
              gameTodos: gameDTO.gameTodos)
          .toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const GameFailure.insufficientPermission());
      } else {
        return left(const GameFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<GameFailure, Unit>> update(Game game) async {
    // TODO: implement delete

    try {
      final gameDTO = GameDTO.fromDomain(game);
      await _firestore
          .collection('games')
          .doc(gameDTO.id)
          .update(gameDTO.toJson());
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
      final userDoc = _firestore.collection('games_users').doc();
      final gameId = game.id.value;
      // await userDoc.get(gameId).delete();
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
