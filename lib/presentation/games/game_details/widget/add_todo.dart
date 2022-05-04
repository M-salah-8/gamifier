import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_editing/game_editing_bloc.dart';
import 'package:gamifier/domain/game/game_todo.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';
import 'package:kt_dart/kt.dart';

class AddTodo extends StatelessWidget {
  final bool editingMood;
  final bool isEditing;
  const AddTodo({
    Key? key,
    required this.isEditing,
    required this.editingMood,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // adding todos only available when creating or edit mood
    // TODO after edit mood
    return IgnorePointer(
      ignoring: isEditing && !editingMood,
      child: Visibility(
        visible: !isEditing || editingMood,
        child: Center(
          child: Card(
            child: IconButton(
                onPressed: () {
                  // add an element to detail bloc list:
                  GameTodo newTodo = GameTodo.empty();
                  _addTodoDialog(context, GameTodoPrimitive.fromDomain(newTodo),
                      'Add todo:', isEditing);
                },
                icon: const Icon(Icons.add)),
          ),
        ),
      ),
    );
  }
}

_addTodoDialog(BuildContext context, final GameTodoPrimitive gameTodo,
    String title, bool isEditing) {
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
        final size = MediaQuery.of(context).size;
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
                        style: Theme.of(context).textTheme.displayMedium,
                        enabled: false,
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
                    // add new todo to todo list
                    BlocProvider.of<GameDetailBloc>(context).add(
                        GameDetailEvent.gameTodosChanged(
                            // get the old list
                            BlocProvider.of<GameDetailBloc>(context)
                                .state
                                .game
                                .gameTodos
                                .toImmutableList()
                                // add the new todo
                                .plusElement(GameTodoPrimitive(
                                    id: gameTodo.id,
                                    todoName: todoNameValue,
                                    times: int.parse(timesNameValue),
                                    points: int.parse(pointsNameValue),
                                    done: false))));
                    // if game in editing mood save changes
                    if (isEditing) {
                      BlocProvider.of<GameEditingBloc>(context).add(
                          GameEditingEvent.todoAdded(GameTodoPrimitive(
                              id: gameTodo.id,
                              todoName: todoNameValue,
                              times: int.parse(timesNameValue),
                              points: int.parse(pointsNameValue),
                              done: false)));
                    }
                    context.router.popUntilRouteWithName(GameDetailRoute.name);
                  },
                  child: Text('Save',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge
                          ?.copyWith(color: Theme.of(context).primaryColor)))
            ],
          ),
        );
      });
}
