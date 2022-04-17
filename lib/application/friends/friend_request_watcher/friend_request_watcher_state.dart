part of 'friend_request_watcher_bloc.dart';

@freezed
class FriendRequestWatcherState with _$FriendRequestWatcherState {
  const factory FriendRequestWatcherState.initial() = _Initial;
  const factory FriendRequestWatcherState.loadInProgress() = _LoadInProgress;
  const factory FriendRequestWatcherState.loadSuccess(
      List<FriendRequestPrimitive> request) = _LoadSuccess;
  // const factory FriendRequestWatcherState.loadFailure(String gameFailure) =
  //     _LoadFailure;
}
