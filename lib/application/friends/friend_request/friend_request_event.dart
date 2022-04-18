part of 'friend_request_bloc.dart';

@freezed
class FriendRequestEvent with _$FriendRequestEvent {
  factory FriendRequestEvent.currentUser(GamifierUserPrimitive currentUser) =
      _CurrentUser;
  const factory FriendRequestEvent.requestSended(
      GamifierUserPrimitive receiver) = _RequestSended;
  const factory FriendRequestEvent.requestAccepted(String requestid) =
      _RequestAccepted;
  const factory FriendRequestEvent.requestCancelled(String requestid) =
      _RequestCancelled;
}
