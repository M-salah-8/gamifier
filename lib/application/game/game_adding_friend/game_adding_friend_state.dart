part of 'game_adding_friend_bloc.dart';

@freezed
class GameAddingFriendState with _$GameAddingFriendState {
  const factory GameAddingFriendState.initial() = _Initial;
  const factory GameAddingFriendState.loadInProgress() = _LoadInProgress;
  const factory GameAddingFriendState.friendAdded(
      GamifierUserPrimitive friendAdded) = _FriendAdded;
  const factory GameAddingFriendState.friendAddedFailure(
      String friendAddedFailure) = _FriendAddedFailure;
  // const factory GameAddingFriendState.loadFailure(GameFailure gameFailure) =
  //     _LoadFailure;
}
