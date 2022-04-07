import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_actor/game_actor_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/injection.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

import '../../application/auth/auth_bloc.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(AuthEvent.authCheckedRequist()),
        ),
        BlocProvider(
          create: (context) => getIt<GameDetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<GameActorBloc>(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData.dark().copyWith(
          primaryColor: const Color.fromARGB(255, 92, 219, 98),
          // appBarTheme:
          //     AppBarTheme(color: const Color.fromARGB(255, 2, 153, 10), elevation: 0),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.green[300],
          ),
          cardTheme: CardTheme(
            color: const Color.fromARGB(255, 100, 12, 116),
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(30),
            ),
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
