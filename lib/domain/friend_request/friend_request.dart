

enum RequestStatus {
  /// sender send the request but not accepted by the receiver.
  requested,
  /// receiver accepted the request
  accepted,
  /// receiver cancelled the request
  cancelled,
}


class FriendRequest {
  final String id;
  final String senderId;
  final String recieverId;
  final RequestStatus status;
}


/**


TASK 1:

#### friend request repository ####

1- collection in firestore named ==> 'friend_request'


## METHODS##
{

1- sendRequest(String receiverId(SENT BY BLOC)){ " RELATED UI => THE RESULT OF SEARCH FROM FRIENDS SEARCH TEXT FILED"

  // make sure that user doesn't duplicate the request

  final docRef = collection('friend_request').doc()
  docRef.set({
    requestId: doc.id,
    senderId: user.id,
    receiverId: 'receiverId,
    status: 'requested',
  })
}

// get all the pending requests
2- getRequests(){ "RELATED UI ==> CREATE SCREEN TO GET ALL THE PENDING REQUESTS"
List<FriendRequest> => collection('friend_request').where('status',isEqualTo:'requested','recevierId',isEqualTo: user.id)
}

3- acceptRequest(String requestId){ "RELATED UI ==> ACCEPT BUTTON FROM REQUEST CARD LAYOUT"
  accept the request ===> request id

  final docRef = collection.doc(id)
  docRef.update({
    status: 'accepted'
  })
  }

4- cancelRequest(String requestId){ "RELATED UI ==> CANCEL BUTTON FROM REQUEST CARD LAYOUT"
  final docRef = collection.doc(id)
  docRef.update({
    status: 'cancelled'
  })
}

5- getFriends(){{ "RELATED UI ==> CREATE SCREEN TO GET ALL OF YOUR FRIENDS"
  List<FriendRequest> => collection('friend_request').where('status',isEqualTo:'accepted','recevierId',isEqualTo: user.id)
}

TASK 2:

save gamifier user docment in firestore !! HOW ? ==>

1- after sigining the user save the user information in firestore
  i- check for if the user info information is already saved (query.size == 0)!!
    final query = collection('users').where('email',isEqualTo: googleUser.email).get().limit(1);
  ii- if the user info is not saved before save it!!
    if(query.size == 0){
        final docRef = collection('users').doc();
        docRef.id = _firebaseAuth.currentUser.id;
        final userModel = GamifierUser.newUser(
          id: _firebaseAuth.currentUser.id,
          name: googleUser.name,
          email: googleUser.email,
        )
        await docRef.set(userModel.toJson())
      }

TASK 3:

### SEARCH FOR FRIENDS ###

1- CREATE TEXT FIELD TO SEARCH FOR SPECIFIC USER
2- QUERY FOR THE SELECTED USER

## friend request repository ##

6- getUsersByName (String queryName){

    List<GamifierUser> ==> collection('users').where('name',isStartedWith: queryName).get()

       return right(List<GamifierUser>);
}

3- DISPLAY THE RESULTS IN THE UI


TASK 4:


1- UPDATE THE GAME MODEL TO HAS USER-ID


*/

