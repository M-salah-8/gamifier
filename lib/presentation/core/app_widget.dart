import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_request_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_search/friend_search_bloc.dart';
import 'package:gamifier/application/friends/friend_request_watcher/friend_request_watcher_bloc.dart';
import 'package:gamifier/application/friends/friend_watcher/friend_watcher_bloc.dart';
import 'package:gamifier/application/game/flying_score/flying_score_bloc.dart';
import 'package:gamifier/application/game/game_actor/game_actor_bloc.dart';
import 'package:gamifier/application/game/game_adding_friend/game_adding_friend_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_editing/game_editing_bloc.dart';
import 'package:gamifier/application/game/game_getter/game_getter_bloc.dart';
import 'package:gamifier/application/game/game_score/game_score_bloc.dart';
import 'package:gamifier/application/game/game_watcher/game_watcher_bloc.dart';
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
        BlocProvider(
          create: (context) => getIt<FriendRequestBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<FriendSearchBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<FriendWatcherBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<FriendRequestWatcherBloc>(),
        ),
        BlocProvider(create: (context) => getIt<GameWatcherBloc>()),
        BlocProvider(create: (context) => getIt<GameGetterBloc>()),
        BlocProvider(create: (context) => getIt<GameAddingFriendBloc>()),
        BlocProvider(create: (context) => getIt<GameEditingBloc>()),
        BlocProvider(create: (context) => getIt<GameScoreBloc>()),
        BlocProvider(create: (context) => getIt<FlyingScoreBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
            primaryColor: const Color.fromARGB(255, 9, 153, 17),
            scaffoldBackgroundColor: Colors.transparent,
            appBarTheme: const AppBarTheme(
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0),
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
                elevation: 0,
                backgroundColor: Colors.transparent,
                extendedPadding: EdgeInsets.all(0)),
            cardTheme: CardTheme(
              elevation: 0,
              // color: const Color.fromARGB(255, 100, 12, 116),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: Color.fromARGB(255, 9, 153, 17), width: 2),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            dialogTheme: DialogTheme(
                titleTextStyle: const TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 9, 153, 17)),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Color.fromARGB(255, 9, 153, 17), width: 2),
                  borderRadius: BorderRadius.circular(30),
                )),
            inputDecorationTheme: InputDecorationTheme(
              hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
              labelStyle: const TextStyle(fontSize: 15, color: Colors.black),
              suffixStyle: const TextStyle(fontSize: 15, color: Colors.black),
              hoverColor: const Color.fromARGB(255, 9, 153, 17),
              fillColor: const Color.fromARGB(255, 9, 153, 17),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 3, color: Color.fromARGB(255, 9, 153, 17)),
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 9, 153, 17)),
                borderRadius: BorderRadius.circular(30),
              ),
              border: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 9, 153, 17)),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            popupMenuTheme: PopupMenuThemeData(
                shape: RoundedRectangleBorder(
              side: const BorderSide(
                  color: Color.fromARGB(255, 9, 153, 17), width: 2),
              borderRadius: BorderRadius.circular(30),
            )),
            textTheme: const TextTheme(
                displaySmall: TextStyle(fontSize: 10, color: Colors.black),
                displayMedium: TextStyle(fontSize: 15, color: Colors.black),
                displayLarge: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 9, 153, 17),
                    fontWeight: FontWeight.bold),
                titleSmall: TextStyle(
                    fontSize: 20, letterSpacing: 1.5, color: Colors.black),
                titleMedium: TextStyle(
                    fontSize: 30,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 9, 153, 17)),
                titleLarge: TextStyle(
                  fontSize: 40,
                  letterSpacing: 1.5,
                  color: Color.fromARGB(255, 9, 153, 17),
                ))),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        title: 'Gamifier',
      ),
    );
  }
}
