part of 'friend_request_bloc.dart';

@freezed
class FriendRequestState with _$FriendRequestState {
  const factory FriendRequestState.failure(String? failuer) = _Failure;
  factory FriendRequestState.initial() =>
      const FriendRequestState.failure(null);
}
