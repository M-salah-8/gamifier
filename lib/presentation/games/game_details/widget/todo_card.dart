import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/flying_score/flying_score_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_score/game_score_bloc.dart';
import 'package:gamifier/presentation/core/circle_button.dart';
import 'package:gamifier/presentation/core/custom_button.dart';
import 'package:gamifier/presentation/games/game_details/widget/todo_delete_dialog.dart';
import 'package:gamifier/presentation/games/game_details/widget/todo_dialog.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:kt_dart/kt.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({
    Key? key,
    required this.todo,
    required this.editingMood,
    required this.isEditing,
    required this.currentUserId,
    required this.gameId,
    required this.level,
  }) : super(key: key);

  final String currentUserId;
  final String gameId;
  final int level;
  final bool isEditing;
  final bool editingMood;
  final GameTodoPrimitive todo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (editingMood || !isEditing)
          CircleButton(
            function: () {
              deleteTodoDialog(context, todo, isEditing);
            },
            button: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        // card body
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CardBody(
                editingMood: editingMood,
                todo: todo,
                currentUserId: currentUserId,
                gameId: gameId,
                level: level),
          ),
        ),
        // editing options available when creating or editing mood is on
        if (editingMood || !isEditing)
          CircleButton(
            function: () {
              todoDialog(context, todo, 'Edit todo:', isEditing);
            },
            button: Icon(Icons.edit, color: Theme.of(context).primaryColor),
          )
      ],
    );
  }
}

class CardBody extends StatelessWidget {
  const CardBody({
    Key? key,
    required this.editingMood,
    required this.todo,
    required this.currentUserId,
    required this.gameId,
    required this.level,
  }) : super(key: key);

  final bool editingMood;
  final String currentUserId;
  final String gameId;
  final int level;
  final GameTodoPrimitive todo;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      function: () {
        // ### push change to current bloc
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
                        ? oldTodo.copyWith(times: oldTodo.times + 1)
                        : oldTodo)));
        // add to score
        BlocProvider.of<GameDetailBloc>(context)
            .add(GameDetailEvent.levelChanged(todo.points));

        // ### save changes in repository
        BlocProvider.of<GameScoreBloc>(context).add(GameScoreEvent.todoChecked(
            gameId: gameId, userId: currentUserId, todo: todo, level: level));
        //  ### make score appreear on the screen
        BlocProvider.of<FlyingScoreBloc>(context)
            .add(FlyingScoreEvent.scoreIn(todo.points));
      },
      child: editingMood
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  todo.todoName,
                  style: Theme.of(context).textTheme.displayMedium,
                  textAlign: TextAlign.center,
                ),
                Text(
                  '+${todo.points.toString()}',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(color: Theme.of(context).primaryColor),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        todo.todoName,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "x",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        todo.times.toString(),
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ],
                  ),
                ),
                Text(
                  '+${todo.points.toString()}',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(color: Theme.of(context).primaryColor),
                ),
                // points added
                // Container(
                //   color: Theme.of(context).primaryColor,
                //   child: TextButton(
                //     child: Text(
                //       '+${todo.points.toString()}',
                //       style: Theme.of(context).textTheme.displayLarge?.copyWith(
                //           color: Theme.of(context).scaffoldBackgroundColor),
                //     ),
                //     onPressed: () {
                //       // ### push change to current bloc
                //       // add new list => same as old list from bloc
                //       // but with our one gameTodo counter added
                //       BlocProvider.of<GameDetailBloc>(context).add(
                //           GameDetailEvent.gameTodosChanged(
                //               // getting old list
                //               BlocProvider.of<GameDetailBloc>(context)
                //                   .state
                //                   .game
                //                   .gameTodos
                //                   .toImmutableList()
                //                   // searching for our todo to modify it
                //                   .map((oldTodo) => oldTodo.id == todo.id
                //                       ? oldTodo.copyWith(
                //                           times: oldTodo.times + 1)
                //                       : oldTodo)));
                //       // add to score
                //       BlocProvider.of<GameDetailBloc>(context)
                //           .add(GameDetailEvent.levelChanged(todo.points));

                //       // ### save changes in repository
                //       BlocProvider.of<GameScoreBloc>(context).add(
                //           GameScoreEvent.todoChecked(
                //               gameId: gameId,
                //               userId: currentUserId,
                //               todo: todo,
                //               level: level));
                //     },
                //   ),
                // ),
              ],
            ),
    );
  }
}

class EditingOptions extends StatelessWidget {
  const EditingOptions({
    Key? key,
    required this.todo,
    required this.isEditing,
  }) : super(key: key);
  final bool isEditing;
  final GameTodoPrimitive todo;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(6), bottomRight: Radius.circular(6)),
      child: Row(
        children: [
          // delete button
          Expanded(
            child: Container(
              color: Colors.red,
              child: IconButton(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  onPressed: () {
                    deleteTodoDialog(context, todo, isEditing);
                  },
                  icon: const Icon(Icons.delete)),
            ),
          ),
          // edit button
          Expanded(
            child: Container(
              color: Colors.blue,
              child: IconButton(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  onPressed: () {
                    todoDialog(context, todo, 'Edit todo:', isEditing);
                  },
                  icon: const Icon(Icons.edit)),
            ),
          )
        ],
      ),
    );
  }
}
