import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/auth/auth_bloc.dart';
import 'package:gamifier/application/friends/friend_request_watcher/friend_request_watcher_bloc.dart';
import 'package:gamifier/application/friends/friend_watcher/friend_watcher_bloc.dart';
import 'package:gamifier/application/game/game_watcher/game_watcher_bloc.dart';
import 'package:gamifier/presentation/friends/widget/friend_requests_dialog.dart';
import 'package:gamifier/presentation/games/game_overview/widget/add_game.dart';
import 'package:gamifier/presentation/games/game_overview/widget/game_card.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class Games extends StatelessWidget {
  const Games({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _showRequestDialog() {
      BlocProvider.of<FriendRequestWatcherBloc>(context)
          .add(FriendRequestWatcherEvent.watchRequestStarted());
      friendRequestsDialog(context);
    }

    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: PopupMenuButton(
          child: const Icon(Icons.people),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: ListTile(
                  title: const Text('friends'),
                  onTap: () {
                    BlocProvider.of<FriendWatcherBloc>(context)
                        .add(FriendWatcherEvent.watchGamesStarted());
                    context.router.popAndPush(const FriendsRoute());
                  },
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  title: const Text('friend request'),
                  onTap: _showRequestDialog,
                ),
              ),
            ];
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: PopupMenuButton(
              child: const Icon(
                Icons.settings,
              ),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    child: ListTile(
                      title: Icon(
                        Icons.brightness_4,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: ListTile(
                      title: const Icon(
                        Icons.logout,
                        color: Colors.black,
                      ),
                      onTap: () {
                        BlocProvider.of<AuthBloc>(context)
                            .add(AuthEvent.signedOut());
                        context.router.replace(const SplashRoute());
                      },
                    ),
                  ),
                ];
              },
            ),
          ),
        ],
        centerTitle: true,
        title: Text('Games', style: Theme.of(context).textTheme.headline6),
      ),
      body: BlocBuilder<GameWatcherBloc, GameWatcherState>(
        builder: (context, state) {
          return state.map(initial: (_) {
            return Container(color: Colors.blue);
          }, loadInProgress: (_) {
            return Container(color: Colors.blue);
          }, loadSuccess: (e) {
            List<GameKeyPrimitive> games = e.gamekeys.asList();
            return GridView.builder(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: games.length + 1,
                itemBuilder: (context, index) {
                  return index == games.length
                      ? const AddGame()
                      : GameCard(
                          game: games[index],
                        );
                });
          }, loadFailure: (_) {
            return Container(color: Colors.yellow);
          });
        },
      ),
    );
  }
}
