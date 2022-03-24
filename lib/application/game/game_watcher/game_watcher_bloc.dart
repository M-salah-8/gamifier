import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/domain/game/game_failure.dart';
import 'package:gamifier/domain/game/i_game_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_watcher_bloc.freezed.dart';
part 'game_watcher_event.dart';
part 'game_watcher_state.dart';

//// request the games from repository then show them:
@injectable
class GameWatcherBloc extends Bloc<GameWatcherEvent, GameWatcherState> {
  final IGameRepository _gameRepository;
  StreamSubscription<Either<GameFailure, KtList<Game>>>?
      _gameStreamSubscription;
  GameWatcherBloc(this._gameRepository)
      : super(const GameWatcherState.initial()) {
    on<GameWatcherEvent>((event, emit) async {
      await event.map(
          // tring to get the games:
          watchGamesStarted: (e) async {
        emit(const GameWatcherState.loadInProgress());
        await _gameStreamSubscription?.cancel();
        _gameStreamSubscription = _gameRepository.watch().listen(
              (failureOrGames) =>
                  add(GameWatcherEvent.gamesReceived(failureOrGames)),
            );
      },
          // result after watching the game:
          gamesReceived: (e) async {
        e.failureOrGames.fold((l) {
          emit(GameWatcherState.loadFailure(l));
        }, (r) => emit(GameWatcherState.loadSuccess(r)));
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