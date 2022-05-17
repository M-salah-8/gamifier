import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/auth/sign_in_form/sign_in_or_up_form_bloc.dart';
import 'package:gamifier/injection.dart';
import 'package:gamifier/presentation/core/gradient_background.dart';
import 'package:gamifier/presentation/sign_up/widget/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      scaffold: Scaffold(
          body: BlocProvider(
        create: (context) => getIt<SignInOrUpFormBloc>(),
        child: const SignUpForm(),
      )),
    );
  }
}
