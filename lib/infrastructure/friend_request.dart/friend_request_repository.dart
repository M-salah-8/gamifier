import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:gamifier/domain/friend_request/friend_request.dart';
import 'package:gamifier/domain/friend_request/i_friend_request_repository.dart';
import 'package:gamifier/domain/user/gamifier_user.dart';
import 'package:gamifier/infrastructure/friend_request.dart/friend_request_tdo.dart';
import 'package:gamifier/infrastructure/gamifier_user/gamifier_user_dto.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFriendRequestRepository)
class FriendRequestRepository implements IFriendRequestRepository {
  final FirebaseFirestore _firestore;
  FriendRequestRepository(this._firestore);
  @override
  Future<Either<String, GamifierUser>> getUsersByEmail(String email) async {
    // get the user from fire store
    final friendsQuery = await _firestore
        .collection('users')
        .limit(1) // limit search to 1 to minimuize reading
        .where('email', isEqualTo: email)
        .get();

    // if no user is found
    if (friendsQuery.size == 0) {
      return left('No user with this email');
    }
    // if the user is found get it
    final friendTDO =
        friendsQuery.docs.map((e) => GamifierUserTDO.fromFirestore(e)).toList();
    // transform the only element in the list to domain
    final friend = friendTDO[0].toDomain();
    return right(friend);
  }

  @override
  Future<List<FriendRequest>> getRequest(GamifierUser currentUser) async {
    final user = GamifierUserTDO.fromDomain(currentUser).toJson();
    // get requests from fire store
    final friendsQuery = await _firestore
        .collection('friend_request')
        .where('requestStatus', isEqualTo: 'requested')
        .where('receiver', isEqualTo: user)
        .get();
    // if the no requests were found
    if (friendsQuery.size == 0) {
      return List<FriendRequest>.empty();
    }
    // if the requests were found get and transform to domain
    final friendsListDTO = friendsQuery.docs
        .map((e) => FriendRequestTDO.fromFirestore(e))
        .toList();
    final friendsList = friendsListDTO.map((e) => e.toDomain()).toList();
    return friendsList;
  }

  @override
  Future<List<GamifierUser>> getFriends(GamifierUser currentUser) async {
    final user = GamifierUserTDO.fromDomain(currentUser).toJson();
    // TODO ask about using 2 where() and .get()
    // TODO fix
    // for now search 2 times
    // get friends from friend requests collection in fire store
    final requestWhenReceverQuery = await _firestore
        .collection('friend_request')
        .where('requestStatus', isEqualTo: 'accepted')
        .where('receiver', isEqualTo: user)
        .get();
    final requestWhenSenderQuery = await _firestore
        .collection('friend_request')
        .where('requestStatus', isEqualTo: 'accepted')
        .where('sender', isEqualTo: user)
        .get();
    // if the no friends were found
    if (requestWhenSenderQuery.size == 0 && requestWhenReceverQuery.size == 0) {
      return List<GamifierUser>.empty();
    }

    if (requestWhenSenderQuery.size == 0) {
      final acceptedRequestListTDO = requestWhenReceverQuery.docs
          .map((e) => FriendRequestTDO.fromFirestore(e))
          .toList();
      final acceptedRequestList =
          acceptedRequestListTDO.map((e) => e.toDomain()).toList();
      return acceptedRequestList.map((e) => e.receiver).toList();
    }

    if (requestWhenReceverQuery.size == 0) {
      final acceptedRequestListTDO = requestWhenSenderQuery.docs
          .map((e) => FriendRequestTDO.fromFirestore(e))
          .toList();
      final acceptedRequestList =
          acceptedRequestListTDO.map((e) => e.toDomain()).toList();
      return acceptedRequestList.map((e) => e.receiver).toList();
    }

    final acceptedRequestListTDO = requestWhenSenderQuery.docs
        .map((e) => FriendRequestTDO.fromFirestore(e))
        .toList();
    final acceptedRequestList =
        acceptedRequestListTDO.map((e) => e.toDomain()).toList();
    final list1 = acceptedRequestList.map((e) => e.receiver).toList();

    final acceptedRequestList2TDO = requestWhenReceverQuery.docs
        .map((e) => FriendRequestTDO.fromFirestore(e))
        .toList();
    final acceptedRequestList2 =
        acceptedRequestList2TDO.map((e) => e.toDomain()).toList();
    final list2 = acceptedRequestList2.map((e) => e.receiver).toList();
    list2.addAll(list1);
    return list2;
  }

  @override
  sendRequest(GamifierUser currentUser, GamifierUser receiver) async {
    // TODO easy way?
    // put new friend request in firestore
    final docRef = _firestore.collection('friend_request').doc();
    docRef.set(FriendRequestTDO(
            id: docRef.id,
            sender: GamifierUserTDO.fromDomain(currentUser),
            receiver: GamifierUserTDO.fromDomain(receiver),
            requestStatus: 'requested')
        .toJson());
  }

  @override
  acceptRequest(String requestid) async {
    // search for the request and change it's states
    final docRef = _firestore.collection('friend_request').doc(requestid);
    await docRef.update({'requestStatus': 'accepted'});
  }

  @override
  cancellRequest(String requestid) async {
    // search for the request and delete it to free space and limit reads
    final docRef = _firestore.collection('friend_request').doc(requestid);
    await docRef.delete();
  }
}
