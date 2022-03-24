import 'package:flutter/material.dart';
import 'package:gamifier/domain/game/game_todo.dart';
import 'package:kt_dart/kt.dart';

class GameTodoList extends StatelessWidget {
  final KtList<GameTodo> gameTodos;
  const GameTodoList({Key? key, required this.gameTodos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<GameTodo> todos = gameTodos.asList();
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(title: Text(todos[index].todoName)),
          );
        });
  }
}
