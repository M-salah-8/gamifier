import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:gamifier/domain/auth/auth_failure.dart';
import 'package:gamifier/domain/auth/i_auth_facade.dart';
import 'package:gamifier/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamifier/domain/core/value_validators.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_or_up_form_bloc.freezed.dart';
part 'sign_in_or_up_form_event.dart';
part 'sign_in_or_up_form_state.dart';

@injectable
class SignInOrUpFormBloc
    extends Bloc<SignInOrUpFormEvent, SignInOrUpFormState> {
  final IAuthFacade _authFacade;
  SignInOrUpFormBloc(this._authFacade) : super(SignInOrUpFormState.initial()) {
    on<SignInOrUpFormEvent>((event, emit) async {
      await event.map(
          emailChanged: (e) {
            emit(state.copyWith(
                emailAddress: EmailAddress(e.email),
                authFailureOrSuccessOption: none()));
          },
          passwordChanged: (e) {
            emit(state.copyWith(
                password: Password(e.password),
                authFailureOrSuccessOption: none()));
          },
          signInWithEmailAndPasswordPressed: (e) async =>
              await _onButtonPressed(
                  _authFacade.signInWithEmailAndPassword, emit),
          // registering with email:
          registerWithEmailAndPasswordPressed: (_) async {
            bool isEmailValid = state.emailAddress
                .isValid(validateEmailAddress(state.emailAddress.value));
            bool isPasswordValid = state.emailAddress
                .isValid(validatePassword(state.password.value));
            print('this is email $isEmailValid');
            print('this is password $isPasswordValid');
            if (isEmailValid && isPasswordValid) {
              emit(state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
              ));
              Either<AuthFailure, Unit> failureOrSuccess =
                  await _authFacade.registerInWithEmailAndPassword(
                      emailAddress: state.emailAddress,
                      password: state.password);
              emit(state.copyWith(
                  authFailureOrSuccessOption: some(failureOrSuccess),
                  isSubmitting: false));
              print(
                  'auth faluer======================================$failureOrSuccess');
            }
            emit(state.copyWith(
                authFailureOrSuccessOption: none(),
                showErrorMessages: AutovalidateMode.always));
          },
          // sign in with google:
          signInGooglePressed: (e) async {
            emit(state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ));
            Either<AuthFailure, Unit> failureOrSuccess =
                await _authFacade.signInWithGoogle();
            emit(state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: some(failureOrSuccess),
            ));
          });
    });
  }

  // pass email and password to firebase authfacade
  Future<void> _onButtonPressed(
      Future<Either<AuthFailure, Unit>> Function(
              {required EmailAddress emailAddress, required Password password})
          call,
      Emitter<SignInOrUpFormState> emit) async {
    final bool isEmailValid = state.emailAddress
        .isValid(validateEmailAddress(state.emailAddress.value));
    final bool isPasswordValid =
        state.emailAddress.isValid(validatePassword(state.password.value));
    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));
      Either<AuthFailure, Unit> failureOrSuccess = await call(
          emailAddress: state.emailAddress, password: state.password);
      emit(state.copyWith(
          authFailureOrSuccessOption: some(failureOrSuccess),
          isSubmitting: false));
    }
    emit(state.copyWith(
        authFailureOrSuccessOption: none(),
        showErrorMessages: AutovalidateMode.always));
  }
}
