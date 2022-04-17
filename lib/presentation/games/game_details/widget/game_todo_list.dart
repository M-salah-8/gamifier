import 'package:flutter/material.dart';
import 'package:gamifier/presentation/games/game_details/widget/add_todo.dart';
import 'package:gamifier/presentation/games/game_details/widget/todo_card.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';

class GameTodoList extends StatelessWidget {
  final bool isEditing;
  final List<GameTodoPrimitive> gameTodos;
  const GameTodoList(
      {Key? key, required this.gameTodos, required this.isEditing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.builder(
        padding: EdgeInsets.fromLTRB(size.width * .3, 20, 20, 20),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemCount: gameTodos.length + 1,
        itemBuilder: (context, index) {
          return index == gameTodos.length
              ? AddTodo(isEditing: isEditing)
              : TodoCard(
                  todo: gameTodos[index],
                );
        });
  }
}
