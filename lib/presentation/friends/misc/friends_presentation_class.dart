import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/core/value_objects.dart';
import 'package:gamifier/domain/friend_request/friend_request.dart';
import 'package:gamifier/domain/user/gamifier_user.dart';

part 'friends_presentation_class.freezed.dart';

@freezed
abstract class FriendRequestPrimitive implements _$FriendRequestPrimitive {
  const FriendRequestPrimitive._();
  const factory FriendRequestPrimitive({
    required String id,
    required GamifierUserPrimitive sender,
    required GamifierUserPrimitive receiver,
    required String requestStatus,
  }) = _FriendRequestPrimitive;

  factory FriendRequestPrimitive.empty() => FriendRequestPrimitive(
      id: 'id',
      sender: GamifierUserPrimitive.empty(),
      receiver: GamifierUserPrimitive.empty(),
      requestStatus: 'requestStatus');

  factory FriendRequestPrimitive.fromDomain(FriendRequest friendRequest) =>
      FriendRequestPrimitive(
          id: friendRequest.id,
          sender: GamifierUserPrimitive.fromDomain(friendRequest.sender),
          receiver: GamifierUserPrimitive.fromDomain(friendRequest.receiver),
          requestStatus: friendRequest.requestStatus);

  FriendRequest toDomain() => FriendRequest(
      id: id,
      sender: sender.toDomain(),
      receiver: receiver.toDomain(),
      requestStatus: requestStatus);
}

@freezed
abstract class GamifierUserPrimitive implements _$GamifierUserPrimitive {
  const GamifierUserPrimitive._();
  const factory GamifierUserPrimitive({
    required String id,
    required String name,
    required String email,
  }) = _GamifierUserPrimitive;

  factory GamifierUserPrimitive.empty() =>
      const GamifierUserPrimitive(id: 'id', name: 'name', email: 'email');

  factory GamifierUserPrimitive.fromDomain(GamifierUser user) =>
      GamifierUserPrimitive(
          id: user.id.value, name: user.name, email: user.email);
  GamifierUser toDomain() {
    return GamifierUser(
        id: UniqueId.fromUniqueString(id), name: name, email: email);
  }
}
