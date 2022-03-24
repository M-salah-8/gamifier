part of 'game_watcher_bloc.dart';

@freezed
class GameWatcherState with _$GameWatcherState {
  const factory GameWatcherState.initial() = _Initial;
  const factory GameWatcherState.loadInProgress() = _LoadInProgress;
  const factory GameWatcherState.loadSuccess(KtList<Game> games) = _LoadSuccess;
  const factory GameWatcherState.loadFailure(GameFailure gameFailure) =
      _LoadFailure;
}