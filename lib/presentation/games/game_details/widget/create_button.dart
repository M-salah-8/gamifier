import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class CreateButton extends StatelessWidget {
  final bool isEditing;
  const CreateButton({
    Key? key,
    required this.isEditing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
        ignoring: isEditing,
        child: Visibility(
            visible: !isEditing,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: FloatingActionButton.extended(
                heroTag: 11,
                label: Text(
                  'creat game',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                onPressed: () {
                  BlocProvider.of<GameDetailBloc>(context)
                      .add(const GameDetailEvent.saved());
                  context.router.popUntilRouteWithName(GameOverviewRoute.name);
                },
              ),
            )));
  }
}
