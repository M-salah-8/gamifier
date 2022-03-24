import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_watcher/game_watcher_bloc.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class Games extends StatelessWidget {
  const Games({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameWatcherBloc, GameWatcherState>(
      builder: (context, state) {
        return state.map(initial: (_) {
          return Container(color: Colors.blue);
        }, loadInProgress: (_) {
          return Container(color: Colors.white);
        }, loadSuccess: (e) {
          List<Game> games = e.notes.asList();
          return ListView.builder(
              itemCount: games.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(games[index].name),
                    onTap: () {
                      context.router.push(GameDetailRoute(game: games[index]));
                    },
                  ),
                );
              });
        }, loadFailure: (_) {
          return Container(color: Colors.yellow);
        })
            // Container(color: Colors.green)
            ;
      },
    );
  }
}
