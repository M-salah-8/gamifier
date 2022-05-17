import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gamifier/application/auth/auth_bloc.dart';
import 'package:gamifier/application/auth/sign_in_form/sign_in_or_up_form_bloc.dart';
import 'package:gamifier/domain/core/value_validators.dart';
import 'package:auto_route/auto_route.dart';
import 'package:gamifier/presentation/core/custom_button.dart';
import 'package:gamifier/presentation/core/flush_bar.dart';
import 'package:gamifier/presentation/core/loading.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';
import 'package:gamifier/presentation/sign_in/widget/google_button.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

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
                    'GAMIFIER',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height * .05,
                  ),
                  // email and password fields
                  Form(
                    autovalidateMode: state.showErrorMessagesforSignIn,
                    child: Padding(
                      padding: EdgeInsets.all(size.width * .05),
                      child: Column(
                        children: [
                          TextFormField(
                            style: Theme.of(context).textTheme.displayMedium,
                            onChanged: (value) {
                              BlocProvider.of<SignInOrUpFormBloc>(context)
                                  .add(SignInOrUpFormEvent.emailChanged(value));
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email,
                                  color: Theme.of(context).primaryColor),
                              hintText: 'Email',
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
                              prefixIcon: Icon(Icons.lock,
                                  color: Theme.of(context).primaryColor),
                            ),
                            obscureText: true,
                            autocorrect: false,
                            validator: (password) => validatePassword(password),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // google, sign in, and up buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomButton(
                          function: () {
                            state.copyWith(
                                showErrorMessagesforSignIn:
                                    AutovalidateMode.always);
                            BlocProvider.of<SignInOrUpFormBloc>(context).add(
                                SignInOrUpFormEvent
                                    .signInWithEmailAndPasswordPressed());
                          },
                          child: Text('Sign in',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).primaryColor))),
                      SizedBox(
                        width: size.width * .1,
                      ),
                      CustomButton(
                          function: () {
                            // reset auto validation
                            state.copyWith(
                                showErrorMessagesforSignIn:
                                    AutovalidateMode.always);
                            context.router.push(const SignUpRoute());
                          },
                          child: Text('sign up',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue))),
                    ],
                  ),
                  SizedBox(
                    height: size.width * .15,
                  ),
                  Center(
                    child: GoogleButton(
                        function: () {
                          BlocProvider.of<SignInOrUpFormBloc>(context)
                              .add(SignInOrUpFormEvent.signInGooglePressed());
                        },
                        child: Text('or sign in with google',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColor))),
                  )
                ],
              ),
            ),
            if (state.isSubmitting) const Center(child: Loading()),
          ],
        );
      },
    );
  }
}
