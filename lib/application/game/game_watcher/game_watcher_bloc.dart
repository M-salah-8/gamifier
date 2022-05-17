import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:gamifier/domain/game/game_failure.dart';
import 'package:gamifier/domain/game/game_keys.dart';
import 'package:gamifier/domain/game/i_game_repository.dart';
import 'package:gamifier/presentation/friends/misc/friends_presentation_class.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_watcher_bloc.freezed.dart';
part 'game_watcher_event.dart';
part 'game_watcher_state.dart';

//// request the games from repository then show them:
@injectable
class GameWatcherBloc extends Bloc<GameWatcherEvent, GameWatcherState> {
  // provided from spalsh_page.dart once the app is started
  late GamifierUserPrimitive currentUser;
  final IGameRepository _gameRepository;
  StreamSubscription<Either<GameFailure, KtList<GameKey>>>?
      _gameStreamSubscription;
  KtList<GameKeyPrimitive>? allgames;
  GameWatcherBloc(this._gameRepository)
      : super(const GameWatcherState.initial()) {
    on<GameWatcherEvent>((event, emit) async {
      await event.map(currentUser: (e) {
        currentUser = e.currentUser;
      },
          // get all the games then divide them later
          watchGamesStarted: (e) async {
        emit(const GameWatcherState.loadInProgress());
        await _gameStreamSubscription?.cancel();
        _gameStreamSubscription =
            _gameRepository.watchGames(currentUser.toDomain()).listen(
          (failureOrGames) {
            failureOrGames.fold(
                (l) => add(GameWatcherEvent.gamesReceived(failureOrGames)),
                (r) {
              allgames = r.map((e) => GameKeyPrimitive.fromDomain(e));
              add(GameWatcherEvent.gamesReceived(failureOrGames));
            });
          },
        );
      },
          // tring to get the games:
          watchUserGamesStarted: (e) {
        final userGames =
            allgames!.filter((gamekey) => gamekey.createrId == currentUser.id);
        emit(GameWatcherState.loadSuccess(userGames, true));
      }, watchFriendsGamesStarted: (e) async {
        final friendGames =
            allgames!.filter((gamekey) => gamekey.createrId != currentUser.id);
        emit(GameWatcherState.loadSuccess(friendGames, false));
      },
          // result after watching the game:
          gamesReceived: (e) async {
        e.failureOrGames.fold((l) {
          emit(GameWatcherState.loadFailure(l));
        }, (r) {
          final gameKeysList = r.map((e) => GameKeyPrimitive.fromDomain(e));
          // first only user games appear
          emit(GameWatcherState.loadSuccess(
              (gameKeysList
                  .filter((gamekey) => gamekey.createrId == currentUser.id)),
              true));
        });
      });
    });
  }

  //closing the stream to avoid memory bleding:
  @override
  Future<void> close() async {
    await _gameStreamSubscription?.cancel();
    return super.close();
  }
}
