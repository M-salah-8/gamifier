import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_watcher/game_watcher_bloc.dart';
import 'package:gamifier/presentation/core/loading.dart';
import 'package:gamifier/presentation/games/game_overview/widget/games_switch.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'add_game.dart';
import 'game_card.dart';

class Games extends StatelessWidget {
  const Games({required this.switchGames, required this.loading, Key? key})
      : super(key: key);

  final ValueNotifier<bool> switchGames;
  final ValueNotifier<bool> loading;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // listen if to game state and display loading
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: size.width * 0.02),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    GamesSwitchs(switchGames: switchGames, size: size),
                    // games
                    Expanded(
                      child: SizedBox(
                        child: BlocBuilder<GameWatcherBloc, GameWatcherState>(
                            builder: (context, state) {
                          return state.map(initial: (_) {
                            return Container(color: Colors.blue);
                          }, loadInProgress: (_) {
                            return const Loading();
                          }, loadSuccess: (e) {
                            List<GameKeyPrimitive> games = e.gamekeys.asList();
                            return GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                itemCount:
                                    e.isUser ? games.length + 1 : games.length,
                                itemBuilder: (context, index) {
                                  return index == games.length
                                      ? Padding(
                                          padding:
                                              EdgeInsets.all(size.width * .03),
                                          child: const AddGame(),
                                        )
                                      : Padding(
                                          padding:
                                              EdgeInsets.all(size.width * .03),
                                          child: GameCard(
                                            isUser: e.isUser,
                                            game: games[index],
                                          ),
                                        );
                                });
                          }, loadFailure: (_) {
                            return Container(color: Colors.yellow);
                          });
                        }),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        // loading on screen
        if (loading.value) ...[
          const Center(child: Loading()),
        ],
      ],
    );
  }
}
