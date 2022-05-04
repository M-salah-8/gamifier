import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_request_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_search/friend_search_bloc.dart';
import 'package:gamifier/application/friends/friend_request_watcher/friend_request_watcher_bloc.dart';
import 'package:gamifier/application/friends/friend_watcher/friend_watcher_bloc.dart';
import 'package:gamifier/application/game/game_actor/game_actor_bloc.dart';
import 'package:gamifier/application/game/game_adding_friend/game_adding_friend_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_editing/game_editing_bloc.dart';
import 'package:gamifier/application/game/game_getter/game_getter_bloc.dart';
import 'package:gamifier/application/game/game_score/game_score_bloc.dart';
import 'package:gamifier/application/game/game_watcher/game_watcher_bloc.dart';
import 'package:gamifier/injection.dart';
import 'package:gamifier/presentation/core/colors.dart';
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
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
            primaryColor: primary,
            appBarTheme: AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle.dark,
                centerTitle: true,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: primary, width: 2),
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                elevation: 0),

            // floatingActionButtonTheme: FloatingActionButtonThemeData(
            //   backgroundColor: Colors.green[300],
            // ),
            cardTheme: CardTheme(
              elevation: 0,
              // color: const Color.fromARGB(255, 100, 12, 116),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: primary, width: 2),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            dialogTheme: DialogTheme(
                titleTextStyle:
                    const TextStyle(fontSize: 20, color: Colors.black),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: primary, width: 2),
                  borderRadius: BorderRadius.circular(30),
                )),
            inputDecorationTheme: InputDecorationTheme(
              hintStyle: const TextStyle(fontSize: 15, color: Colors.black),
              labelStyle: const TextStyle(fontSize: 15, color: Colors.black),
              suffixStyle: const TextStyle(fontSize: 15, color: Colors.black),
              hoverColor: primary,
              fillColor: primary,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: primary),
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primary),
                borderRadius: BorderRadius.circular(30),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: primary),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            popupMenuTheme: PopupMenuThemeData(
                shape: RoundedRectangleBorder(
              side: BorderSide(color: primary, width: 2),
              borderRadius: BorderRadius.circular(30),
            )),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: primary, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            textTheme: const TextTheme(
                displayMedium: TextStyle(fontSize: 15, color: Colors.black),
                displayLarge: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                titleSmall: TextStyle(
                    fontSize: 20, letterSpacing: 1.5, color: Colors.black),
                titleMedium: TextStyle(
                    fontSize: 30, letterSpacing: 1.5, color: Colors.black),
                titleLarge: TextStyle(
                    fontSize: 40, letterSpacing: 1.5, color: Colors.black))),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        title: 'Gamifier',
      ),
    );
  }
}
