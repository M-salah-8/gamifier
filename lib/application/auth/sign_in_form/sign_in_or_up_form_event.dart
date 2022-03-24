part of 'sign_in_or_up_form_bloc.dart';

@freezed
class SignInOrUpFormEvent with _$SignInOrUpFormEvent {
  factory SignInOrUpFormEvent.emailChanged(String email) = EmailChange;
  factory SignInOrUpFormEvent.passwordChanged(String password) = PasswordChange;
  factory SignInOrUpFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  factory SignInOrUpFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  factory SignInOrUpFormEvent.signInGooglePressed() = SignInGooglePressed;
}
