import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gamifier/application/auth/auth_bloc.dart';
import 'package:gamifier/application/auth/sign_in_form/sign_in_or_up_form_bloc.dart';
import 'package:gamifier/domain/core/value_validators.dart';
import 'package:gamifier/presentation/core/custom_button.dart';
import 'package:gamifier/presentation/core/flush_bar.dart';
import 'package:gamifier/presentation/core/loading.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocConsumer<SignInOrUpFormBloc, SignInOrUpFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              flushBar(
                  context,
                  failure.map(
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server error',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    invalidEmailAndPasswordCombination: (_) =>
                        'Invalid email and password combination',
                  ),
                  SuccessOrError.error);
            },
            (r) {
              context.router.popUntilRouteWithName(SignInRoute.name);
              context.router.replace(const SplashRoute());
              BlocProvider.of<AuthBloc>(context)
                  .add(AuthEvent.authCheckedRequist());
            },
          ),
        );
      },
      builder: (context, state) {
        return Stack(
          children: [
            Center(
              child: ListView(
                shrinkWrap: true,
                children: [
                  // title
                  Text(
                    'SIGN UP',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height * .05,
                  ),
                  Form(
                    autovalidateMode: state.showErrorMessagesforSignUp,
                    child: Padding(
                      padding: EdgeInsets.all(size.width * .05),
                      child: Column(
                        children: [
                          TextFormField(
                            style: Theme.of(context).textTheme.displayMedium,
                            onChanged: (value) {
                              BlocProvider.of<SignInOrUpFormBloc>(context).add(
                                  SignInOrUpFormEvent.userNameChanged(value));
                            },
                            decoration:
                                const InputDecoration(hintText: 'user name'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            style: Theme.of(context).textTheme.displayMedium,
                            onChanged: (value) {
                              BlocProvider.of<SignInOrUpFormBloc>(context)
                                  .add(SignInOrUpFormEvent.emailChanged(value));
                            },
                            decoration: InputDecoration(
                              hintText: 'Email',
                              prefixIcon: Icon(Icons.email,
                                  color: Theme.of(context).primaryColor),
                            ),
                            validator: (email) => validateEmailAddress(email),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            style: Theme.of(context).textTheme.displayMedium,
                            onChanged: (value) => BlocProvider.of<
                                    SignInOrUpFormBloc>(context)
                                .add(
                                    SignInOrUpFormEvent.passwordChanged(value)),
                            decoration: InputDecoration(
                              hintText: 'Password',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            autocorrect: true,
                            obscureText: true,
                            validator: (password) => validatePassword(password),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // sign up button
                  Center(
                    child: CustomButton(
                      function: () {
                        state.copyWith(
                            showErrorMessagesforSignUp:
                                AutovalidateMode.always);
                        BlocProvider.of<SignInOrUpFormBloc>(context).add(
                            SignInOrUpFormEvent
                                .registerWithEmailAndPasswordPressed());
                      },
                      child: Text('Sign up',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                  color: Theme.of(context).primaryColor)),
                    ),
                  )
                ],
              ),
            ),
            if (state.isSubmitting) ...[
              const Center(child: Loading()),
            ]
          ],
        );
      },
    );
  }
}
