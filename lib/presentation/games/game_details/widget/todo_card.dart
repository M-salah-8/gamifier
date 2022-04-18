import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/presentation/games/game_details/widget/todo_delete_dialog.dart';
import 'package:gamifier/presentation/games/game_details/widget/todo_dialog.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:kt_dart/collection.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({
    Key? key,
    required this.todo,
  }) : super(key: key);

  final GameTodoPrimitive todo;

  @override
  Widget build(BuildContext context) {
    // TODO remove inkWell if not needed
    final size = MediaQuery.of(context).size;
    return Card(
      // margin:  EdgeInsets.symmetric(horizontal: size.width *.01),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(todo.todoName),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(todo.times.toString()),
                        const SizedBox(
                          width: 2,
                        ),
                        const Text(
                          "x",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(todo.points.toString()),
                      ],
                    )
                  ],
                ),
                onLongPress: () {
                  deleteTodoDialog(context, todo);
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // done button
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Theme.of(context).primaryColor,
                      child: IconButton(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          onPressed: () {
                            // add new list => same as old list from bloc
                            // but with our one gameTodo counter added
                            BlocProvider.of<GameDetailBloc>(context).add(
                                GameDetailEvent.gameTodosChanged(
                                    // getting old list
                                    BlocProvider.of<GameDetailBloc>(context)
                                        .state
                                        .game
                                        .gameTodos
                                        .toImmutableList()
                                        // searching for our todo to modify it
                                        .map((oldTodo) => oldTodo.id == todo.id
                                            ? oldTodo.copyWith(
                                                times: oldTodo.times + 1)
                                            : oldTodo)));
                            // add points to the level
                            // BlocProvider.of<GameDetailBloc>(context).add(
                            //     GameDetailEvent.levelInceased(todo.points));
                            // save changes
                            BlocProvider.of<GameDetailBloc>(context)
                                .add(const GameDetailEvent.saved());
                          },
                          icon: const Icon(Icons.done)),
                    ),
                  ),
                  // edit button
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: IconButton(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          onPressed: () {
                            todoDialog(context, todo, 'Edit todo:');
                          },
                          icon: const Icon(Icons.edit)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
