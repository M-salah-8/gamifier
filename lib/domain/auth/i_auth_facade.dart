import 'package:dartz/dartz.dart';
import 'package:gamifier/domain/auth/auth_failure.dart';
import 'package:gamifier/domain/auth/value_objects.dart';
import 'package:gamifier/domain/user/gamifier_user.dart';

abstract class IAuthFacade {
  Future<Option<GamifierUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<Either<AuthFailure, Unit>> registerInWithEmailAndPassword(
      {required EmailAddress emailAddress,
      required Password password,
      required String name});
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
