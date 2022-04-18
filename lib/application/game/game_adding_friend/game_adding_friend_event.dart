part of 'game_adding_friend_bloc.dart';

@freezed
class GameAddingFriendEvent with _$GameAddingFriendEvent {
  factory GameAddingFriendEvent.addFriend(
      GamePrimitive game, GamifierUserPrimitive friend) = _addFriend;
}
