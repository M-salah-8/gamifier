import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_actor/game_actor_bloc.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class GameCard extends StatelessWidget {
  final Game game;
  const GameCard({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
          child: Center(
              child: Text(
        game.name,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              letterSpacing: 1.5,
            ),
      ))),
      onTap: () {
        context.router.push(GameDetailRoute(game: game));
      },
      onLongPress: () {
        _deleteDialog(context, BlocProvider.of<GameActorBloc>(context), game);
      },
    );
  }
}

_deleteDialog(BuildContext context, GameActorBloc gameActorBloc, Game game) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('DELETE:'),
          content: Text(game.name),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  gameActorBloc.add(GameActorEvent.deleted(game));
                },
                child: const Text(
                  'DELETE',
                  style: TextStyle(color: Colors.red),
                ))
          ],
        );
      });
}
