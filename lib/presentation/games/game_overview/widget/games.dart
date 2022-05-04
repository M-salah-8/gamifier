import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gamifier/application/auth/auth_bloc.dart';
import 'package:gamifier/application/friends/friend_request_watcher/friend_request_watcher_bloc.dart';
import 'package:gamifier/application/friends/friend_watcher/friend_watcher_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_editing/game_editing_bloc.dart';
import 'package:gamifier/application/game/game_getter/game_getter_bloc.dart';
import 'package:gamifier/application/game/game_watcher/game_watcher_bloc.dart';
import 'package:gamifier/presentation/core/app_bar.dart';
import 'package:gamifier/presentation/core/loading.dart';
import 'package:gamifier/presentation/friends/widget/friend_requests_dialog.dart';
import 'package:gamifier/presentation/games/game_overview/widget/add_game.dart';
import 'package:gamifier/presentation/games/game_overview/widget/game_card.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class Games extends HookWidget {
  const Games({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loading = useState(false);
    _showRequestDialog() {
      BlocProvider.of<FriendRequestWatcherBloc>(context)
          .add(FriendRequestWatcherEvent.watchRequestStarted());
      friendRequestsDialog(context);
    }

    final size = MediaQuery.of(context).size;
    // listen if to game state and display loading
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
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                CustomAppBar(
                    leading: PopupMenuButton(
                      child: const Icon(Icons.people),
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            child: ListTile(
                              title: Text(
                                'friends',
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                              onTap: () {
                                BlocProvider.of<FriendWatcherBloc>(context).add(
                                    FriendWatcherEvent.watchGamesStarted());
                                context.router.popAndPush(
                                    FriendsRoute(addfriendToGame: false));
                              },
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              title: Text(
                                'friend request',
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              ),
                              onTap: () {
                                _showRequestDialog();
                                // context.router.pop();
                              },
                            ),
                          ),
                        ];
                      },
                    ),
                    title: Text('Games',
                        style: Theme.of(context).textTheme.headline6),
                    action: IconButton(
                      padding: const EdgeInsets.all(0),
                      icon: const Icon(
                        Icons.logout,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        BlocProvider.of<AuthBloc>(context)
                            .add(AuthEvent.signedOut());
                        context.router.replace(const SplashRoute());
                      },
                    )

                    // PopupMenuButton(
                    //   child: const Icon(
                    //     Icons.settings,
                    //   ),
                    //   itemBuilder: (context) {
                    //     return [
                    //       const PopupMenuItem(
                    //         child: ListTile(
                    //           title: Icon(
                    //             Icons.brightness_4,
                    //             color: Colors.black,
                    //           ),
                    //         ),
                    //       ),
                    //       PopupMenuItem(
                    //         child: ListTile(
                    //           title: const Icon(
                    //             Icons.logout,
                    //             color: Colors.black,
                    //           ),
                    //           onTap: () {
                    //             BlocProvider.of<AuthBloc>(context)
                    //                 .add(AuthEvent.signedOut());
                    //             context.router.replace(const SplashRoute());
                    //           },
                    //         ),
                    //       ),
                    //     ];
                    //   },
                    // ),

                    ),
                BlocBuilder<GameWatcherBloc, GameWatcherState>(
                  builder: (context, state) {
                    return state.map(initial: (_) {
                      return Container(color: Colors.blue);
                    }, loadInProgress: (_) {
                      return Container(color: Colors.blue);
                    }, loadSuccess: (e) {
                      List<GameKeyPrimitive> games = e.gamekeys.asList();
                      return Expanded(
                        child: SizedBox(
                          child: GridView.builder(
                              padding: EdgeInsets.all(size.width * .1),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2),
                              itemCount: games.length + 1,
                              itemBuilder: (context, index) {
                                return index == games.length
                                    ? const AddGame()
                                    : GameCard(
                                        game: games[index],
                                      );
                              }),
                        ),
                      );
                    }, loadFailure: (_) {
                      return Container(color: Colors.yellow);
                    });
                  },
                ),
              ],
            ),
            if (loading.value) ...[
              const Center(child: Loading()),
            ]
          ],
        ),
      ),
    );
  }

  _changeGameNameDialog(BuildContext context, GameEditingBloc gameEditingBloc) {
    final size = MediaQuery.of(context).size;
    showDialog(
        context: context,
        builder: (context) {
          return SizedBox(
            height: size.height * .5,
            width: size.width * .75,
            child: AlertDialog(
              title: const Text('New Game Name:'),
              content: TextField(
                style: Theme.of(context).textTheme.displayMedium,
                onChanged: (value) {
                  // change in current state
                  BlocProvider.of<GameDetailBloc>(context)
                      // save to bloc
                      .add(GameDetailEvent.nameChanged(value));
                  gameEditingBloc.add(GameEditingEvent.nameEditied(value));
                },
              ),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      context.router.pop();
                    },
                    child: Text(
                      'change',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(color: Theme.of(context).primaryColor),
                    ))
              ],
            ),
          );
        });
  }
}
