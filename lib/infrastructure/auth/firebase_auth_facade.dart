import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gamifier/domain/auth/auth_failure.dart';
import 'package:gamifier/domain/auth/i_auth_facade.dart';
import 'package:gamifier/domain/auth/value_objects.dart';
import 'package:gamifier/domain/user/gamifier_user.dart';
import 'package:gamifier/infrastructure/gamifier_user/gamifier_user_dto.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

// imlementing the auth facade
@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Either<AuthFailure, Unit>> registerInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress.value,
        password: password.value,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress.value,
        password: password.value,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );
      await _firebaseAuth.signInWithCredential(authCredential);
      Query;
      final query = await FirebaseFirestore.instance
          .collection('users')
          .where('email', isEqualTo: googleUser.email)
          .limit(1) // limit search to 1 to minimuize reading
          .get();
      // if size is 0 that means the user is new
      // create new GamifierUser
      if (query.size == 0) {
        final userId = _firebaseAuth.currentUser!.uid;
        final docRef =
            FirebaseFirestore.instance.collection('users').doc(userId);
        final userModelTDO = GamifierUserTDO(
          id: userId,
          name: googleUser.displayName!,
          email: googleUser.email,
        );
        await docRef.set(userModelTDO.toJson());
      }

      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() =>
      Future.wait([_googleSignIn.signOut(), _firebaseAuth.signOut()]);

  @override
  Future<Option<GamifierUser>> getSignedInUser() async {
    final userId = _firebaseAuth.currentUser?.uid;
    if (userId == null) {
      return none();
    }
    final senderquary = await FirebaseFirestore.instance
        .collection('users')
        .limit(1) // limit search to 1 to minimuize reading
        .where('id', isEqualTo: userId)
        .get();
    // get the user and transform it to domain
    final currentUser = senderquary.docs
        .map((e) => GamifierUserTDO.fromJson(e.data()))
        .toList()[0]
        .toDomain();
    return some(currentUser);
  }
}
