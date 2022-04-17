import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/auth/sign_in_form/sign_in_or_up_form_bloc.dart';
import 'package:gamifier/domain/core/value_validators.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInOrUpFormBloc, SignInOrUpFormState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Center(
          child: Form(
            autovalidateMode: AutovalidateMode.always,
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
                              .registerWithEmailAndPasswordPressed());
                    },
                    child: const Text('Sign up'))
              ],
            ),
          ),
        );
      },
    );
  }
}
