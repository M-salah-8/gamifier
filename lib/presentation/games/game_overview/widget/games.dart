import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_watcher/game_watcher_bloc.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/presentation/games/game_overview/widget/add_game.dart';
import 'package:gamifier/presentation/games/game_overview/widget/game_card.dart';

class Games extends StatelessWidget {
  const Games({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * .45,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
        ),
        SafeArea(
          minimum: EdgeInsets.only(top: size.height * .1),
          child: Center(
            heightFactor: 0,
            child: Text(
              'Games:',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 45,
                  letterSpacing: 1.5,
                  color: const Color.fromARGB(255, 100, 12, 116)),
            ),
          ),
        ),
        BlocBuilder<GameWatcherBloc, GameWatcherState>(
          builder: (context, state) {
            return state.map(initial: (_) {
              return Container(color: Colors.blue);
            }, loadInProgress: (_) {
              return Container(color: Colors.white);
            }, loadSuccess: (e) {
              List<Game> games = e.games.asList();
              return SafeArea(
                minimum: EdgeInsets.only(top: size.height * .2),
                child: GridView.builder(
                    padding: const EdgeInsets.all(10),
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
              );
            }, loadFailure: (_) {
              return Container(color: Colors.yellow);
            });
          },
        ),
      ],
    );
  }
}
