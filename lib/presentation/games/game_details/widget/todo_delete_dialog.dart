import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_editing/game_editing_bloc.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:kt_dart/kt.dart';

deleteTodoDialog(
    BuildContext context, GameTodoPrimitive gameTodo, bool isEditing) {
  final size = MediaQuery.of(context).size;
  showDialog(
      context: context,
      builder: (context) {
        return SizedBox(
          height: size.height * .5,
          width: size.width * .75,
          child: AlertDialog(
            title: const Text('DELETE:'),
            content: Text(gameTodo.todoName),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    // provide new list with all elements but one
                    BlocProvider.of<GameDetailBloc>(context).add(
                        GameDetailEvent.gameTodosChanged(
                            BlocProvider.of<GameDetailBloc>(context)
                                .state
                                .game
                                .gameTodos
                                .toImmutableList()
                                .minusElement(gameTodo)
                                .map((todo) => todo)));
                    // if game in editing mood save changes
                    if (isEditing) {
                      BlocProvider.of<GameEditingBloc>(context)
                          .add(GameEditingEvent.todoDeleted(gameTodo));
                    }
                    context.router.pop();
                  },
                  child: const Text(
                    'DELETE',
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          ),
        );
      });
}
