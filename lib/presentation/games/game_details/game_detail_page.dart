import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/presentation/games/game_details/widget/game_todo_list.dart';

class GameDetailPage extends StatelessWidget {
  final Game? game;
  const GameDetailPage({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    BlocProvider.of<GameDetailBloc>(context)
        .add(GameDetailEvent.initialized(game));
    return BlocBuilder<GameDetailBloc, GameDetailState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              SafeArea(
                minimum: EdgeInsets.only(top: size.height * .1),
                child: Center(
                  heightFactor: 0,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      'level:${state.game.level.toString()}',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 30,
                          letterSpacing: 1.5,
                          color: const Color.fromARGB(255, 100, 12, 116)),
                    ),
                  ),
                ),
              ),
              SafeArea(
                  minimum: EdgeInsets.only(top: size.height * .2),
                  child: GameTodoList(gameTodos: state.game.gameTodos)),
            ],
          ),
        );
      },
    );
  }
}
