import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gamifier/domain/auth/i_auth_facade.dart';
import 'package:gamifier/injection.dart';

extension FirebaseX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw Error());
    return FirebaseFirestore.instance.collection('users').doc(user.id!.value);
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get gameCollection => collection('games');
}
