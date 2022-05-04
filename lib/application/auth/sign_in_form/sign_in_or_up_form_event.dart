part of 'sign_in_or_up_form_bloc.dart';

@freezed
class SignInOrUpFormEvent with _$SignInOrUpFormEvent {
  factory SignInOrUpFormEvent.emailChanged(String email) = _EmailChange;
  factory SignInOrUpFormEvent.passwordChanged(String password) =
      _PasswordChange;
  factory SignInOrUpFormEvent.userNameChanged(String userName) =
      _userNameChange;
  factory SignInOrUpFormEvent.signInWithEmailAndPasswordPressed() =
      _SignInWithEmailAndPasswordPressed;
  factory SignInOrUpFormEvent.registerWithEmailAndPasswordPressed() =
      _RegisterWithEmailAndPasswordPressed;
  factory SignInOrUpFormEvent.signInGooglePressed() = _SignInGooglePressed;
}
