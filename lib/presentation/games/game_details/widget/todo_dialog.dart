import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_editing/game_editing_bloc.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:kt_dart/kt.dart';

todoDialog(BuildContext context, final GameTodoPrimitive gameTodo, String title,
    bool isEditing) {
  final size = MediaQuery.of(context).size;
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
        return SizedBox(
          height: size.height * .5,
          width: size.width * .75,
          child: AlertDialog(
            title: Text(title),
            content: ListView(
              shrinkWrap: true,
              children: [
                // todoName form field:
                TextFormField(
                  style: Theme.of(context).textTheme.displayMedium,
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
                        enabled: false,
                        style: Theme.of(context).textTheme.displayMedium,
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
                        style: Theme.of(context).textTheme.displayMedium,
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
                    BlocProvider.of<GameDetailBloc>(context).add(
                        GameDetailEvent.gameTodosChanged(
                            // getting old list
                            BlocProvider.of<GameDetailBloc>(context)
                                .state
                                .game
                                .gameTodos
                                .toImmutableList()
                                // searching for our todo to modify it
                                .map((todo) => todo.id == gameTodo.id
                                    ? todo.copyWith(
                                        todoName: todoNameValue,
                                        times: int.parse(timesNameValue),
                                        points: int.parse(pointsNameValue))
                                    : todo)));
                    // save new list
                    if (isEditing) {
                      BlocProvider.of<GameEditingBloc>(context).add(
                          GameEditingEvent.todoEditied(gameTodo.copyWith(
                              todoName: todoNameValue,
                              times: int.parse(timesNameValue),
                              points: int.parse(pointsNameValue))));
                    }
                    context.router.pop();
                  },
                  child: Text('Save',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(color: Theme.of(context).primaryColor)))
            ],
          ),
        );
      });
}
