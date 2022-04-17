import 'package:dartz/dartz.dart';
import 'package:gamifier/domain/user/gamifier_user.dart';

import 'friend_request.dart';

abstract class IFriendRequestRepository {
  sendRequest(GamifierUser currentUser, GamifierUser receiver);
  Future<List<FriendRequest>> getRequest(GamifierUser currentUser);
  Future<List<FriendRequest>> getFriends(GamifierUser currentUser);
  cancellRequest(String requestid);
  acceptRequest(String requestid);
  Future<Either<String, GamifierUser>> getUsersByEmail(String email);
}
