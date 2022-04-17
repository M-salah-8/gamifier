part of 'friend_request_bloc.dart';

@freezed
class FriendRequestState with _$FriendRequestState {
  const factory FriendRequestState(FriendRequestPrimitive friendRequest) =
      _request;
  factory FriendRequestState.initial() =>
      FriendRequestState(FriendRequestPrimitive.empty());
}
