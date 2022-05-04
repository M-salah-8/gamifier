import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class AddGame extends StatelessWidget {
  const AddGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      child: Card(
          margin: EdgeInsets.all(size.width * .05),
          child: const Center(child: Icon(Icons.add))),
      onTap: () {
        _createDialog(context, BlocProvider.of<GameDetailBloc>(context));
      },
    );
  }
}

_createDialog(BuildContext context, GameDetailBloc gameDetailBloc) {
  final size = MediaQuery.of(context).size;
  gameDetailBloc.add(const GameDetailEvent.initialized(null, null));
  showDialog(
      context: context,
      builder: (context) {
        return SizedBox(
          height: size.height * .5,
          width: size.width * .75,
          child: AlertDialog(
            title: const Text('Game Name:'),
            content: TextField(
              style: Theme.of(context).textTheme.displayMedium,
              onChanged: (value) {
                // BlocProvider.of<GameDetailBloc>(context)
                gameDetailBloc.add(GameDetailEvent.nameChanged(value));
              },
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    context.router.popAndPush(const GameDetailRoute());
                  },
                  child: Text(
                    'Next',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(color: Theme.of(context).primaryColor),
                  ))
            ],
          ),
        );
      });
}
