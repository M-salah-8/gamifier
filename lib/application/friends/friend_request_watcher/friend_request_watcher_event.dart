part of 'friend_request_watcher_bloc.dart';

@freezed
class FriendRequestWatcherEvent with _$FriendRequestWatcherEvent {
  factory FriendRequestWatcherEvent.currentUser(
      GamifierUserPrimitive currentUser) = _CurrentUser;
  factory FriendRequestWatcherEvent.watchRequestStarted() =
      _WatchRequestStarted;
}
