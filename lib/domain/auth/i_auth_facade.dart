import 'package:dartz/dartz.dart';
import 'package:gamifier/domain/auth/auth_failure.dart';
import 'package:gamifier/domain/auth/gamifier_user.dart';
import 'package:gamifier/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Option<gamifierUser> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<Either<AuthFailure, Unit>> registerInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
