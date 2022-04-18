import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
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

  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
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
                  // add new list => same as old list from bloc
                  // but with our one gameTodo modified
                  // BlocProvider.of<GameDetailBloc>(context).add(
                  // GameDetailEvent.gameTodosChanged(
                  // getting old list
                  // BlocProvider.of<GameDetailBloc>(context)
                  //     .state
                  //     .game
                  //     .gameTodos
                  //     // searching for our todo to modify it
                  //     .map((todo) => GameTodoPrimitive.fromDomain(todo)
                  //                 .id ==
                  //             gameTodo.id
                  //         ? GameTodoPrimitive.fromDomain(todo).copyWith(
                  //             todoName: todoNameValue,
                  //             times: int.parse(timesNameValue),
                  //             points: int.parse(pointsNameValue))
                  //         : GameTodoPrimitive.fromDomain(todo))));
                  // save new list
                  // BlocProvider.of<GameDetailBloc>(context)
                  //     .add(const GameDetailEvent.saved());
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
