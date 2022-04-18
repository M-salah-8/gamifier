import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class AddGame extends StatelessWidget {
  const AddGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: const Card(
          margin: EdgeInsets.all(20), child: Center(child: Icon(Icons.add))),
      onTap: () {
        _createDialog(context, BlocProvider.of<GameDetailBloc>(context));
      },
    );
  }
}

_createDialog(BuildContext context, GameDetailBloc gameDetailBloc) {
  gameDetailBloc.add(const GameDetailEvent.initialized(null));
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Game Name:'),
          content: TextField(
            onChanged: (value) {
              // BlocProvider.of<GameDetailBloc>(context)
              gameDetailBloc.add(GameDetailEvent.nameChanged(value));
            },
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  // gameDetailBloc.add(const GameDetailEvent.saved());
                  context.router.popAndPush(
                      GameDetailRoute(game: gameDetailBloc.state.game));
                },
                child: const Text('Next'))
          ],
        );
      });
}
