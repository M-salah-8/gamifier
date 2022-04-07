part of 'game_watcher_bloc.dart';

@freezed
class GameWatcherEvent with _$GameWatcherEvent {
  factory GameWatcherEvent.watchGamesStarted() = _WatchGamesStarted;
  factory GameWatcherEvent.gamesReceived(
    Either<GameFailure, KtList<Game>> failureOrGames,
  ) = _GamesReceived;
}
