import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_watcher/game_watcher_bloc.dart';
import 'package:gamifier/injection.dart';
import 'package:gamifier/presentation/games/game_overview/widget/games.dart';

class GameOverviewPage extends StatelessWidget {
  const GameOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<GameWatcherBloc>()..add(GameWatcherEvent.watchStarted())),
        //TODO provid other blocs: actor
        // BlocProvider(create: (context) => getIt<AuthBloc>()),
        // BlocProvider(create: (context) => getIt<NoteActorBloc>())
      ],
      child: Scaffold(body: Games()),
    );
  }
}
