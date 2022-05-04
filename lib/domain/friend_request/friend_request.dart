import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/user/gamifier_user.dart';

part 'friend_request.freezed.dart';

@freezed
class FriendRequest with _$FriendRequest {
  const factory FriendRequest({
    required String id,
    required GamifierUser sender,
    required GamifierUser receiver,
    required String requestStatus,
  }) = _FriendRequest;
}
