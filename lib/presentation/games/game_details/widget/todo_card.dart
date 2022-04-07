import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/domain/game/game_todo.dart';
import 'package:gamifier/presentation/games/game_details/misc/game_todo_primitive.dart';
import 'package:gamifier/presentation/games/game_details/widget/todo_dialog.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({
    Key? key,
    required this.todos,
    required this.index,
  }) : super(key: key);

  final List<GameTodo> todos;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onLongPress: () {
          BlocProvider.of<GameDetailBloc>(context)
              .add(GameDetailEvent.levelInceased(todos[index].points));
        },
        onTap: () {
          todoDialog(context, GameTodoPrimitive.fromDomain(todos[index]),
              'Edit todo:');
        },
        title: Text("${todos[index].todoName} x ${todos[index].times}"),
        trailing: Text("${todos[index].points}"),
      ),
    );
  }
}
