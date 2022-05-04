part of 'sign_in_or_up_form_bloc.dart';

@freezed
class SignInOrUpFormState with _$SignInOrUpFormState {
  factory SignInOrUpFormState({
    required EmailAddress emailAddress,
    required Password password,
    required String userName,
    required bool isSubmitting,
    required AutovalidateMode showErrorMessagesforSignIn,
    required AutovalidateMode showErrorMessagesforSignUp,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;
  factory SignInOrUpFormState.initial() => SignInOrUpFormState(
      emailAddress: (EmailAddress('')),
      password: Password(''),
      userName: '',
      isSubmitting: false,
      showErrorMessagesforSignIn: AutovalidateMode.disabled,
      showErrorMessagesforSignUp: AutovalidateMode.disabled,
      authFailureOrSuccessOption: none());
}
