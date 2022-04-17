part of 'friend_watcher_bloc.dart';

@freezed
class FriendWatcherEvent with _$FriendWatcherEvent {
  factory FriendWatcherEvent.currentUser(GamifierUserPrimitive currentUser) =
      _CurrentUser;
  factory FriendWatcherEvent.watchGamesStarted() = _WatchGamesStarted;
}
