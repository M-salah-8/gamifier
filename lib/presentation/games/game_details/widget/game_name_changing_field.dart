import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_editing/game_editing_bloc.dart';
import 'package:gamifier/presentation/core/circle_button.dart';

class GameNameChangingField extends HookWidget {
  final bool isEditing;
  const GameNameChangingField({
    Key? key,
    required this.isEditing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPressed = useState(false);
    return PopupMenuButton(
      color: Colors.transparent,
      padding: const EdgeInsets.all(10),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                const BoxShadow(
                    color: Color.fromARGB(255, 84, 85, 84),
                    offset: Offset(0.5, 0.5),
                    spreadRadius: 1,
                    blurRadius: 5),
                BoxShadow(
                    color: Colors.white.withOpacity(0.9),
                    offset: const Offset(-0.5, -0.5),
                    spreadRadius: 1,
                    blurRadius: 5),
              ],
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 185, 224, 187),
                    Color.fromARGB(255, 248, 248, 248),
                    Color.fromARGB(255, 248, 248, 248),
                  ])),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Icon(
              Icons.edit,
              color: Theme.of(context).primaryColor,
            ),
          )),
      itemBuilder: (context) {
        isPressed.value = true;
        Future.delayed(const Duration(milliseconds: 200), () {
          isPressed.value = false;
        });

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
                filled: true,
                fillColor: Colors.white,
                hintText: 'enter a new name',
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
      },
    );
  }
}
