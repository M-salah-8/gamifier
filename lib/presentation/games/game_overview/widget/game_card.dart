import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_getter/game_getter_bloc.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';

class GameCard extends StatelessWidget {
  final GameKeyPrimitive game;
  const GameCard({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      child: Card(
          margin: EdgeInsets.all(size.width * .05),
          child: Center(
              child: Text(game.gameName,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge))),
      onTap: () {
        BlocProvider.of<GameGetterBloc>(context)
            .add(GameGetterEvent.getGame(game.gameId));
      },
      onLongPress: () {},
    );
  }
}
