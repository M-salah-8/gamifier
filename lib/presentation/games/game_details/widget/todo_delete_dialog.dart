import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';
import 'package:kt_dart/kt.dart';

deleteTodoDialog(BuildContext context, GameTodoPrimitive gameTodo) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('DELETE:'),
          content: Text(gameTodo.todoName),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  // provide new list with all elements but one
                  // BlocProvider.of<GameDetailBloc>(context).add(GameDetailEvent
                  //     .gameTodosChanged(BlocProvider.of<GameDetailBloc>(context)
                  //         .state
                  //         .game
                  //         .gameTodos
                  //         .minusElement(gameTodo)
                  //         .map((todo) => GameTodoPrimitive.fromDomain(todo))));
                  // save the new list
                  BlocProvider.of<GameDetailBloc>(context)
                      .add(const GameDetailEvent.saved());
                  context.router.popUntilRouteWithName(GameDetailRoute.name);
                },
                child: const Text(
                  'DELETE',
                  style: TextStyle(color: Colors.red),
                ))
          ],
        );
      });
}
