import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_score/game_score_bloc.dart';
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
    // TODO remove inkWell if not needed
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Theme.of(context).primaryColor,
            ),
            borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            // card body
            CardBody(
                todo: todo,
                currentUserId: currentUserId,
                gameId: gameId,
                level: level),
            // editing options available when creating or editing mood is on
            if (editingMood || !isEditing)
              EditingOptions(
                todo: todo,
                isEditing: isEditing,
              )
          ],
        ),
      ),
    );
  }
}

class CardBody extends StatelessWidget {
  const CardBody({
    Key? key,
    required this.todo,
    required this.currentUserId,
    required this.gameId,
    required this.level,
  }) : super(key: key);
  final String currentUserId;
  final String gameId;
  final int level;
  final GameTodoPrimitive todo;

  @override
  Widget build(BuildContext context) {
    return Row(
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
        // points added
        Container(
          color: Theme.of(context).primaryColor,
          child: TextButton(
            child: Text(
              '+${todo.points.toString()}',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge
                  ?.copyWith(color: Theme.of(context).scaffoldBackgroundColor),
            ),
            onPressed: () {
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
              BlocProvider.of<GameScoreBloc>(context).add(
                  GameScoreEvent.todoChecked(
                      gameId: gameId,
                      userId: currentUserId,
                      todo: todo,
                      level: level));
            },
          ),
        ),
      ],
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

// Expanded(
            //   flex: 3,
            //   child: InkWell(
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         // Text(todo.todoName),
            //         // const SizedBox(
            //         //   height: 20,
            //         // ),
            //         // Row(
            //         //   mainAxisAlignment: MainAxisAlignment.center,
            //         //   crossAxisAlignment: CrossAxisAlignment.center,
            //         //   children: [
            //         //     Text(todo.times.toString()),
            //         //     const SizedBox(
            //         //       width: 2,
            //         //     ),
            //         //     const Text(
            //         //       "x",
            //         //       style: TextStyle(
            //         //           fontSize: 50,
            //         //           color: Colors.red,
            //         //           fontWeight: FontWeight.bold),
            //         //     ),
            //         //     const SizedBox(
            //         //       width: 2,
            //         //     ),
            //         //     Text(todo.points.toString()),
            //         //   ],
            //         // )
            //       ],
            //     ),
            //     onLongPress: () {
            //       deleteTodoDialog(context, todo);
            //     },
            //   ),
            // ),
            // Expanded(
            //   flex: 1,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       // done button
            //       Expanded(
            //         flex: 2,
            //         child: Container(
            //           color: Theme.of(context).primaryColor,
            //           child: IconButton(
            //               color: Theme.of(context).scaffoldBackgroundColor,
            //               onPressed: () {
            //                 // add new list => same as old list from bloc
            //                 // but with our one gameTodo counter added
            //                 BlocProvider.of<GameDetailBloc>(context).add(
            //                     GameDetailEvent.gameTodosChanged(
            //                         // getting old list
            //                         BlocProvider.of<GameDetailBloc>(context)
            //                             .state
            //                             .game
            //                             .gameTodos
            //                             .toImmutableList()
            //                             // searching for our todo to modify it
            //                             .map((oldTodo) => oldTodo.id == todo.id
            //                                 ? oldTodo.copyWith(
            //                                     times: oldTodo.times + 1)
            //                                 : oldTodo)));
            //                 // add points to the level
            //                 // BlocProvider.of<GameDetailBloc>(context).add(
            //                 //     GameDetailEvent.levelInceased(todo.points));
            //                 // save changes
            //                 BlocProvider.of<GameDetailBloc>(context)
            //                     .add(const GameDetailEvent.saved());
            //               },
            //               icon: const Icon(Icons.done)),
            //         ),
            //       ),
            //       // edit button
            //       Expanded(
            //         child: Container(
            //           color: Colors.blue,
            //           child: IconButton(
            //               color: Theme.of(context).scaffoldBackgroundColor,
            //               onPressed: () {
            //                 todoDialog(context, todo, 'Edit todo:');
            //               },
            //               icon: const Icon(Icons.edit)),
            //         ),
            //       )
            //     ],
            //   ),
            // ),