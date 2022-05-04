import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_editing/game_editing_bloc.dart';

class GameNameChangingField extends StatelessWidget {
  final bool isEditing;
  const GameNameChangingField({
    Key? key,
    required this.isEditing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        elevation: 0,
        // color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Icon(
          Icons.edit,
          color: Theme.of(context).primaryColor,
        ),
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              padding: const EdgeInsets.all(0),
              child: TextField(
                style: Theme.of(context).textTheme.displayMedium,
                onSubmitted: (value) {
                  if (isEditing) {
                    BlocProvider.of<GameEditingBloc>(context)
                        .add(GameEditingEvent.nameEditied(value));
                  }
                  BlocProvider.of<GameDetailBloc>(context)
                      .add(GameDetailEvent.nameChanged(value));
                  context.router.pop();
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'new name',
                  fillColor: Theme.of(context).primaryColor,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            )
          ];
        });
  }
}
