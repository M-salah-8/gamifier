import 'package:flutter/material.dart';
import 'package:gamifier/domain/game/game_todo.dart';
import 'package:gamifier/presentation/games/game_details/widget/add_todo.dart';
import 'package:gamifier/presentation/games/game_details/widget/todo_card.dart';
import 'package:kt_dart/kt.dart';

class GameTodoList extends StatelessWidget {
  final KtList<GameTodo> gameTodos;
  const GameTodoList({Key? key, required this.gameTodos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<GameTodo> todos = gameTodos.asList();
    return ListView.builder(
        shrinkWrap: true,
        itemCount: todos.length + 1,
        itemBuilder: (context, index) {
          return index == todos.length
              ? const AddTodo()
              : TodoCard(
                  todos: todos,
                  index: index,
                );
        });
  }
}
