import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/presentation/games/game_details/widget/game_todo_list.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class GameDetailPage extends StatelessWidget {
  final GamePrimitive? game;
  const GameDetailPage({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameDetailBloc, GameDetailState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              state.isEditing ? game!.name : 'add todos',
              style:
                  TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
            ),
            actions: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('level:'
                      // ${state.game.level.toString()}',
                      ),
                ),
              )
            ],
          ),
          body: Stack(
            children: [
              GameTodoList(
                  gameTodos: state.game.gameTodos, isEditing: state.isEditing),
            ],
          ),
          floatingActionButton: IgnorePointer(
              ignoring: state.isEditing,
              child: Visibility(
                  visible: !state.isEditing,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: FloatingActionButton.extended(
                      label: Text(
                        'creat game',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: () {
                        BlocProvider.of<GameDetailBloc>(context)
                            .add(const GameDetailEvent.saved());
                        context.router
                            .popUntilRouteWithName(GameOverviewRoute.name);
                      },
                    ),
                  ))),
        );
      },
    );
  }
}
