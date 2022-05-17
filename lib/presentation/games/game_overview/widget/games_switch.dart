import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_watcher/game_watcher_bloc.dart';

class GamesSwitchs extends StatelessWidget {
  const GamesSwitchs({
    Key? key,
    required this.switchGames,
    required this.size,
  }) : super(key: key);

  final ValueNotifier<bool> switchGames;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () {
                  switchGames.value = false;
                  BlocProvider.of<GameWatcherBloc>(context)
                      .add(GameWatcherEvent.watchUserGamesStarted());
                },
                child: Text(
                  'Your Games',
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: switchGames.value
                          ? const Color.fromARGB(255, 65, 64, 64)
                          : Theme.of(context).primaryColor),
                )),
            TextButton(
                onPressed: () {
                  switchGames.value = true;
                  BlocProvider.of<GameWatcherBloc>(context)
                      .add(GameWatcherEvent.watchFriendsGamesStarted());
                },
                child: Text('Friends Games',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: switchGames.value
                            ? Theme.of(context).primaryColor
                            : const Color.fromARGB(255, 65, 64, 64)))),
          ],
        ),
        // moving divider
        Stack(
          children: [
            const Divider(
              thickness: .2,
              color: Color.fromARGB(255, 65, 64, 64),
            ),
            AnimatedAlign(
              duration: const Duration(milliseconds: 250),
              alignment: switchGames.value
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: SizedBox(
                width: size.width * 0.5,
                child: Divider(
                  thickness: 2,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
