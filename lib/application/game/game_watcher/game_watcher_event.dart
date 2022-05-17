part of 'game_watcher_bloc.dart';

@freezed
class GameWatcherEvent with _$GameWatcherEvent {
  factory GameWatcherEvent.currentUser(GamifierUserPrimitive currentUser) =
      _CurrentUser;
  factory GameWatcherEvent.watchGamesStarted() = _WatchGamesStarted;
  factory GameWatcherEvent.watchUserGamesStarted() = _WatchUserGamesStarted;
  factory GameWatcherEvent.watchFriendsGamesStarted() =
      _WatchFriendsGamesStarted;
  factory GameWatcherEvent.gamesReceived(
      Either<GameFailure, KtList<GameKey>> failureOrGames) = _GamesReceived;
}
