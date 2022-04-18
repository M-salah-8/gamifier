import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_request_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_search/friend_search_bloc.dart';
import 'package:gamifier/application/friends/friend_request_watcher/friend_request_watcher_bloc.dart';
import 'package:gamifier/application/friends/friend_watcher/friend_watcher_bloc.dart';
import 'package:gamifier/application/game/game_actor/game_actor_bloc.dart';
import 'package:gamifier/application/game/game_adding_friend/game_adding_friend_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_getter/game_getter_bloc.dart';
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
      ],
      child: MaterialApp.router(
        theme: ThemeData.light().copyWith(
            primaryColor: primary,
            appBarTheme: AppBarTheme(color: primary, elevation: 0),
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
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: primary, width: 2),
                  borderRadius: BorderRadius.circular(30),
                )),
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: primary),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            popupMenuTheme: PopupMenuThemeData(
                shape: RoundedRectangleBorder(
              side: BorderSide(color: primary, width: 2),
              borderRadius: BorderRadius.circular(30),
            )),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              extendedTextStyle: TextStyle(color: primary),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: primary, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
            )
            // textTheme: TextTheme(
            //     bodyMedium: const TextStyle(
            //         fontSize: 20,
            //         letterSpacing: 1.5,
            //         color: Color.fromARGB(255, 92, 219, 98)),
            //     headline6: const TextStyle(
            //         fontSize: 40,
            //         letterSpacing: 1.5,
            //         color: Color.fromARGB(255, 92, 219, 98)))
            ),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        title: 'Gamifier',
      ),
    );
  }
}
