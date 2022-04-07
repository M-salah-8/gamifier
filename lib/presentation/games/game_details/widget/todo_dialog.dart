import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/presentation/games/game_details/misc/game_todo_primitive.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';
import 'package:kt_dart/kt.dart';

todoDialog(
    BuildContext context, final GameTodoPrimitive gameTodo, String title) {
  TextEditingController name = TextEditingController(text: gameTodo.todoName);
  TextEditingController times =
      TextEditingController(text: gameTodo.times.toString());
  TextEditingController points =
      TextEditingController(text: gameTodo.points.toString());
  String todoNameValue = gameTodo.todoName;
  String timesNameValue = gameTodo.times.toString();
  String pointsNameValue = gameTodo.points.toString();

  KtList<GameTodoPrimitive> todoList = BlocProvider.of<GameDetailBloc>(context)
      .state
      .game
      .gameTodos
      .map((_) => GameTodoPrimitive.fromDomain(_));
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 100, 12, 116),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.white70, width: 1),
            borderRadius: BorderRadius.circular(30),
          ),
          title: Text(title),
          content: ListView(
            shrinkWrap: true,
            children: [
              // todoName form field:
              TextFormField(
                controller: name,
                decoration: const InputDecoration(
                    label: Text('todoName'), counterText: ''),
                maxLines: null,
                onChanged: (value) {
                  todoNameValue = value;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child:
                        // times form field:
                        TextFormField(
                      controller: times,
                      decoration: const InputDecoration(
                          label: Text('times'), counterText: ''),
                      maxLines: null,
                      onChanged: (value) {
                        timesNameValue = value;
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child:
                        // points form field:
                        TextFormField(
                      controller: points,
                      decoration: const InputDecoration(
                          label: Text('points'), counterText: ''),
                      maxLines: null,
                      onChanged: (value) {
                        pointsNameValue = value;
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
          actions: <Widget>[
            // save button:
            TextButton(
                onPressed: () {
                  BlocProvider.of<GameDetailBloc>(context).add(
                      GameDetailEvent.gameTodosChanged(todoList.map((todo) =>
                          todo.id == gameTodo.id
                              ? todo.copyWith(
                                  todoName: todoNameValue,
                                  times: int.parse(timesNameValue),
                                  points: int.parse(pointsNameValue))
                              : todo)));
                  BlocProvider.of<GameDetailBloc>(context)
                      .add(const GameDetailEvent.saved());
                  context.router.popUntilRouteWithName(GameDetailRoute.name);
                },
                child: Text(
                  'Save',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 20,
                      letterSpacing: 1.5,
                      color: Theme.of(context).primaryColor),
                ))
          ],
        );
      });
}
