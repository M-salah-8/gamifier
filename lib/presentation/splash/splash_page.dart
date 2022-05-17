import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_request_bloc.dart';
import 'package:gamifier/application/friends/friend_request_watcher/friend_request_watcher_bloc.dart';
import 'package:gamifier/application/friends/friend_watcher/friend_watcher_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_score/game_score_bloc.dart';
import 'package:gamifier/application/game/game_watcher/game_watcher_bloc.dart';
import 'package:gamifier/presentation/core/gradient_background.dart';
import 'package:gamifier/presentation/core/loading.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';
import '../../application/auth/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            authenticated: (e) {
              // providing the current user to bolcs that use user to preform
              // search or requests to other users
              // TODO better way?
              BlocProvider.of<FriendRequestWatcherBloc>(context)
                  .add(FriendRequestWatcherEvent.currentUser(e.currentUser));
              BlocProvider.of<FriendRequestBloc>(context)
                  .add(FriendRequestEvent.currentUser(e.currentUser));
              BlocProvider.of<FriendWatcherBloc>(context)
                  .add(FriendWatcherEvent.currentUser(e.currentUser));
              BlocProvider.of<GameWatcherBloc>(context)
                  .add(GameWatcherEvent.currentUser(e.currentUser));
              BlocProvider.of<GameDetailBloc>(context)
                  .add(GameDetailEvent.currentUser(e.currentUser));
              BlocProvider.of<GameScoreBloc>(context)
                  .add(GameScoreEvent.currentUser(e.currentUser));
              // initiate game keys
              BlocProvider.of<GameWatcherBloc>(context)
                  .add(GameWatcherEvent.watchGamesStarted());
              context.router.replace(const GameOverviewRoute());
            },
            unAuthenticated: (_) =>
                context.router.replace(const SignInRoute()));
      },
      child: const GradientBackground(
        scaffold: Scaffold(
          body: Center(child: Loading()),
        ),
      ),
    );
  }
}
