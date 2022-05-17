import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_watcher/friend_watcher_bloc.dart';
import 'package:gamifier/application/game/game_actor/game_actor_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_editing/game_editing_bloc.dart';
import 'package:gamifier/presentation/core/alert_dialog_title.dart';
import 'package:gamifier/presentation/core/circle_button.dart';
import 'package:gamifier/presentation/core/custom_button.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class BottomBar extends StatelessWidget {
  final GamePrimitive game;
  final bool editingMood;
  final bool isEditing;
  const BottomBar(
      {Key? key,
      required this.game,
      required this.editingMood,
      required this.isEditing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 20),
        alignment: Alignment.bottomCenter,
        child: editingMood || !isEditing
            ? EditingOptions(
                editingMood: editingMood,
              )
            : PlayingOptions(
                game: game,
              ));
  }
}

class EditingOptions extends StatelessWidget {
  final bool editingMood;
  const EditingOptions({Key? key, required this.editingMood}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      CustomButton(
          child: Text(
            'cancel',
            style: Theme.of(context)
                .textTheme
                .displayLarge
                ?.copyWith(color: Colors.red),
          ),
          function:
              // if is game is allready created and in editing mood
              editingMood
                  ? () {
                      BlocProvider.of<GameEditingBloc>(context)
                          .add(GameEditingEvent.canceled());
                    }
                  : () {
                      context.router.pop();
                    }),
      CustomButton(
          child: Text(
            'save',
            style: Theme.of(context)
                .textTheme
                .displayLarge
                ?.copyWith(color: Theme.of(context).primaryColor),
          ),
          function:
              // if is game is allready created and in editing mood
              editingMood
                  ? () {
                      BlocProvider.of<GameEditingBloc>(context)
                          .add(GameEditingEvent.saved());
                    }
                  : () {
                      BlocProvider.of<GameDetailBloc>(context)
                          .add(const GameDetailEvent.saved());
                      context.router
                          .popUntilRouteWithName(GameOverviewRoute.name);
                    })
    ]);
  }
}

class PlayingOptions extends StatelessWidget {
  final GamePrimitive game;
  const PlayingOptions({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleButton(
          button: Icon(
            Icons.people,
            color: Theme.of(context).primaryColor,
          ),
          function: () {
            BlocProvider.of<FriendWatcherBloc>(context)
                .add(FriendWatcherEvent.watchGamesStarted());
            context.router
                .push(FriendsRoute(addfriendToGame: true, game: game));
          },
        ),
        CircleButton(
            button: Icon(
              Icons.edit,
              color: Theme.of(context).primaryColor,
            ),
            function: () {
              BlocProvider.of<GameEditingBloc>(context)
                  .add(GameEditingEvent.editingStarted(game));
            }),
        CircleButton(
            button: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
            function: () {
              _deleteDialog(
                  context, BlocProvider.of<GameActorBloc>(context), game);
            }),
      ],
    );
  }

  _deleteDialog(
      BuildContext context, GameActorBloc gameActorBloc, GamePrimitive game) {
    final size = MediaQuery.of(context).size;
    showDialog(
        context: context,
        builder: (context) {
          return SizedBox(
            height: size.height * .5,
            width: size.width * .75,
            child: AlertDialog(
              titlePadding: const EdgeInsets.all(0),
              title: const AlertDialogTitle(title: 'DELETE'),
              content: Text(game.name),
              actions: <Widget>[
                CustomButton(
                    function: () {
                      gameActorBloc
                          .add(GameActorEvent.deleted(game.toDomain()));
                      context.router
                          .popUntilRouteWithName(GameOverviewRoute.name);
                    },
                    child: Text(
                      'DELETE',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge
                          ?.copyWith(color: Colors.red),
                    ))
              ],
            ),
          );
        });
  }
}
