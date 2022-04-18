import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/friend_request/friend_request.dart';
import 'package:gamifier/infrastructure/gamifier_user/gamifier_user_dto.dart';

part 'friend_request_tdo.g.dart';
part 'friend_request_tdo.freezed.dart';

@freezed
abstract class FriendRequestTDO implements _$FriendRequestTDO {
  const FriendRequestTDO._();
  const factory FriendRequestTDO({
    required String id,
    required GamifierUserTDO sender,
    required GamifierUserTDO receiver,
    required String requestStatus,
  }) = _FriendRequestTDO;

  factory FriendRequestTDO.fromDomain(FriendRequest friendRequest) =>
      FriendRequestTDO(
          id: friendRequest.id,
          sender: GamifierUserTDO.fromDomain(friendRequest.sender),
          receiver: GamifierUserTDO.fromDomain(friendRequest.receiver),
          requestStatus: friendRequest.requestStatus);
  FriendRequest toDomain() => FriendRequest(
      id: id,
      sender: sender.toDomain(),
      receiver: receiver.toDomain(),
      requestStatus: requestStatus);

  factory FriendRequestTDO.fromJson(Map<String, dynamic> json) =>
      _$FriendRequestTDOFromJson(json);

  factory FriendRequestTDO.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> docMap = doc.data() as Map<String, dynamic>;
    return FriendRequestTDO.fromJson(docMap);
  }
}
