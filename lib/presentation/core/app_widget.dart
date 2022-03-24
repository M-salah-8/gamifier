import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/injection.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

import '../../application/auth/auth_bloc.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AuthBloc>()..add(AuthEvent.authCheckedRequist()),
      child: MaterialApp.router(
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.green[300],
          appBarTheme: AppBarTheme(color: Colors.green[300], elevation: 0),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.green[300],
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        title: 'Gamifier',
      ),
    );
  }
}
