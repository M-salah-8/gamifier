part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  factory AuthEvent.authCheckedRequist() = AuthCheckedRequist;
  factory AuthEvent.signedOut() = SignedOut;
}
