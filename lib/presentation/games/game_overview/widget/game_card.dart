import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gamifier/application/game/game_getter/game_getter_bloc.dart';
import 'package:gamifier/presentation/core/custom_button.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';

class GameCard extends HookWidget {
  const GameCard({Key? key, required this.game, required this.isUser})
      : super(key: key);
  final GameKeyPrimitive game;
  final bool isUser;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        function: () {
          BlocProvider.of<GameGetterBloc>(context)
              .add(GameGetterEvent.getGame(game.gameId));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(game.gameName,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium),
            Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'creater:',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(game.creater,
                    style: Theme.of(context).textTheme.displayMedium)
              ],
            )
          ],
        ));
  }
}
