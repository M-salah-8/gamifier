part of 'friend_watcher_bloc.dart';

@freezed
class FriendWatcherState with _$FriendWatcherState {
  const factory FriendWatcherState.initial() = _Initial;
  const factory FriendWatcherState.loadInProgress() = _LoadInProgress;
  const factory FriendWatcherState.loadSuccess(
      List<GamifierUserPrimitive> friends) = _LoadSuccess;
  // const factory FriendWatcherState.loadFailure(String gameFailure) =
  //     _LoadFailure;
}
