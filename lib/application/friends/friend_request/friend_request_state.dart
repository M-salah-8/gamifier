part of 'friend_request_bloc.dart';

@freezed
class FriendRequestState with _$FriendRequestState {
  const factory FriendRequestState.initial() = _initial;
  const factory FriendRequestState.loadInProgress() = _LoadInProgress;
  const factory FriendRequestState.failureOrSuccess(String failuerOrSuccess) =
      _FailureOrSuccess;
}
