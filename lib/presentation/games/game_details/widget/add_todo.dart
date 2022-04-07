import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/domain/game/game_todo.dart';
import 'package:gamifier/presentation/games/game_details/misc/game_todo_primitive.dart';
import 'package:gamifier/presentation/games/game_details/widget/todo_dialog.dart';
import 'package:kt_dart/kt.dart';

class AddTodo extends StatelessWidget {
  const AddTodo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: IconButton(
          onPressed: () {
            // add an element to detail bloc list:
            GameTodo newTodo = GameTodo.empty();
            KtList<GameTodoPrimitive> todoList =
                BlocProvider.of<GameDetailBloc>(context)
                    .state
                    .game
                    .gameTodos
                    .map((_) => GameTodoPrimitive.fromDomain(_))
                    .plusElement(GameTodoPrimitive.fromDomain(newTodo));
            BlocProvider.of<GameDetailBloc>(context)
                .add(GameDetailEvent.gameTodosChanged(todoList));
            // open the editing dialog:
            todoDialog(
                context, GameTodoPrimitive.fromDomain(newTodo), 'Add todo:');
          },
          icon: const Icon(Icons.add)),
    );
  }
}
