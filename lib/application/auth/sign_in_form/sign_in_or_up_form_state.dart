part of 'sign_in_or_up_form_bloc.dart';

@freezed
class SignInOrUpFormState with _$SignInOrUpFormState {
  factory SignInOrUpFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
    required AutovalidateMode showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;
  factory SignInOrUpFormState.initial() => SignInOrUpFormState(
      emailAddress: (EmailAddress('')),
      password: Password(''),
      isSubmitting: false,
      showErrorMessages: AutovalidateMode.disabled,
      authFailureOrSuccessOption: none());
}
