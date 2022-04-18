import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/auth/auth_bloc.dart';
import 'package:gamifier/application/auth/sign_in_form/sign_in_or_up_form_bloc.dart';
import 'package:gamifier/domain/core/value_validators.dart';
import 'package:auto_route/auto_route.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInOrUpFormBloc, SignInOrUpFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {
            print('value is none');
          },
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination',
                ),
              ).show(context);
            },
            (r) {
              context.router.replace(const SplashRoute());
              BlocProvider.of<AuthBloc>(context)
                  .add(AuthEvent.authCheckedRequist());
            },
          ),
        );
      },
      builder: (context, state) {
        return Center(
          child: Form(
            autovalidateMode: state.showErrorMessages,
            child: ListView(
              children: [
                TextFormField(
                  onChanged: (value) {
                    BlocProvider.of<SignInOrUpFormBloc>(context)
                        .add(SignInOrUpFormEvent.emailChanged(value));
                  },
                  decoration: const InputDecoration(hintText: 'Email'),
                  validator: (email) => validateEmailAddress(email),
                ),
                TextFormField(
                  onChanged: (value) =>
                      BlocProvider.of<SignInOrUpFormBloc>(context)
                          .add(SignInOrUpFormEvent.passwordChanged(value)),
                  decoration: const InputDecoration(hintText: 'Password'),
                  validator: (password) => validatePassword(password),
                ),
                TextButton(
                    onPressed: () {
                      BlocProvider.of<SignInOrUpFormBloc>(context).add(
                          SignInOrUpFormEvent
                              .signInWithEmailAndPasswordPressed());
                    },
                    child: const Text('Sign in')),
                TextButton(
                    onPressed: () {
                      context.router.push(const SignUpRoute());
                    },
                    child: const Text('sign up')),
                TextButton(
                    onPressed: () {
                      BlocProvider.of<SignInOrUpFormBloc>(context)
                          .add(SignInOrUpFormEvent.signInGooglePressed());
                    },
                    child: const Text('sign in with google'))
              ],
            ),
          ),
        );
      },
    );
  }
}
