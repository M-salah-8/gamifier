import 'package:flutter/material.dart';
import 'package:gamifier/presentation/games/game_details/widget/add_todo.dart';
import 'package:gamifier/presentation/games/game_details/widget/todo_card.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';

class GameTodoList extends StatelessWidget {
  final bool isEditing;
  final List<GameTodoPrimitive>? userTodos;
  final List<GameTodoPrimitive> gameTodos;
  const GameTodoList(
      {Key? key,
      required this.gameTodos,
      required this.isEditing,
      this.userTodos})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO conditon when isEditing is true
    // compain user's score and rigid game todo aspects in one todo list
    late final List<GameTodoPrimitive> todos;
    userTodos != null
        ? todos = gameTodos.map((gameTodo) {
            final userTodo = userTodos
                ?.where((userTodo) => userTodo.id == gameTodo.id)
                .first;
            return gameTodo.copyWith(times: userTodo!.times);
          }).toList()
        : todos = gameTodos;
    final size = MediaQuery.of(context).size;
    return GridView.builder(
        // padding: EdgeInsets.fromLTRB(
        //     size.width * .01, size.height * .05, size.width * .01, 0),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemCount: todos.length + 1,
        itemBuilder: (context, index) {
          return index == todos.length
              ? AddTodo(isEditing: isEditing)
              : TodoCard(
                  todo: todos[index],
                );
        });
  }
}
