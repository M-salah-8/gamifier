import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gamifier/application/auth/auth_bloc.dart';
import 'package:gamifier/application/friends/friend_request_watcher/friend_request_watcher_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_getter/game_getter_bloc.dart';
import 'package:gamifier/presentation/core/gradient_background.dart';
import 'package:gamifier/presentation/friends/widget/friend_requests_dialog.dart';
import 'package:gamifier/presentation/games/game_overview/widget/bottom_bar.dart';
import 'package:gamifier/presentation/games/game_overview/widget/games.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class GameOverviewPage extends HookWidget {
  const GameOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final switchGames = useState(false);
    final loading = useState(false);
    _showRequestDialog() {
      BlocProvider.of<FriendRequestWatcherBloc>(context)
          .add(FriendRequestWatcherEvent.watchRequestStarted());
      friendRequestsDialog(context);
    }

    return BlocListener<GameGetterBloc, GameGetterState>(
        listener: (context, state) {
          state.map(
              initial: (_) {},
              loadInProgress: (_) {
                // to toggel the hook value so the progress indicator appear
                loading.value = true;
              },
              loadSuccess: (e) {
                // toggle hook again to make the progress disappear
                loading.value = false;
                BlocProvider.of<GameDetailBloc>(context).add(
                    GameDetailEvent.initialized(
                        e.gameDetails.game, e.gameDetails.usersScores));
                context.router.push(const GameDetailRoute());
              });
        },
        child: GradientBackground(
            scaffold: Scaffold(
          appBar: AppBar(
            title: Text('Games', style: Theme.of(context).textTheme.headline6),
            leading: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: RotatedBox(
                quarterTurns: 2,
                child: IconButton(
                  icon: Icon(
                    Icons.logout,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    _showRequestDialog();
                    BlocProvider.of<AuthBloc>(context)
                        .add(AuthEvent.signedOut());
                    context.router.replace(const SplashRoute());
                  },
                ),
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: const BottomBar(),
          body: Games(switchGames: switchGames, loading: loading),
        )));
    //  Games();
  }
}
