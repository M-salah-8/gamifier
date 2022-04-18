part of 'game_adding_friend_bloc.dart';

@freezed
class GameAddingFriendState with _$GameAddingFriendState {
  const factory GameAddingFriendState.initial() = _Initial;
  const factory GameAddingFriendState.loadInProgress() = _LoadInProgress;
  const factory GameAddingFriendState.friendAdded() = _FriendAdded;
  // const factory GameAddingFriendState.loadFailure(GameFailure gameFailure) =
  //     _LoadFailure;
}
