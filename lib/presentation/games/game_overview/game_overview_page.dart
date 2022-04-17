import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_watcher/game_watcher_bloc.dart';
import 'package:gamifier/presentation/games/game_overview/widget/games.dart';

class GameOverviewPage extends StatelessWidget {
  const GameOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GameWatcherBloc>(context)
        .add(GameWatcherEvent.watchGamesStarted());
    return const Games();
  }
}
