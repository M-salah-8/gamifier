import 'package:flutter/material.dart';
import 'package:gamifier/presentation/games/game_details/widget/add_todo.dart';
import 'package:gamifier/presentation/games/game_details/widget/todo_card.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';

class GameTodoList extends StatelessWidget {
  const GameTodoList(
      {Key? key,
      required this.gameTodos,
      required this.isEditing,
      required this.gameId,
      required this.level,
      required this.editingMood,
      required this.currentUserId})
      : super(key: key);

  final String gameId;
  final int level;
  final String currentUserId;
  final bool editingMood;
  final bool isEditing;
  final List<GameTodoPrimitive> gameTodos;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(size.width * .02, 0, size.width * .01, 0),
      width: size.width * .40,
      child: ListView.builder(
          itemCount: gameTodos.length + 1,
          itemBuilder: (context, index) {
            return index == gameTodos.length
                ? AddTodo(
                    isEditing: isEditing,
                    editingMood: editingMood,
                  )
                : Padding(
                    padding: EdgeInsets.all(size.height * .01),
                    child: TodoCard(
                      gameId: gameId,
                      level: level,
                      currentUserId: currentUserId,
                      todo: gameTodos[index],
                      editingMood: editingMood,
                      isEditing: isEditing,
                    ),
                  );
          }),
    );
  }
}
