import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/presentation/core/alert_dialog_title.dart';
import 'package:gamifier/presentation/core/custom_button.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class AddGame extends StatelessWidget {
  const AddGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        function: () {
          _createDialog(context, BlocProvider.of<GameDetailBloc>(context));
        },
        child: const Center(child: Icon(Icons.add)));
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
            titlePadding: const EdgeInsets.all(0),
            title: const AlertDialogTitle(title: 'Game Name'),
            content: TextField(
              style: Theme.of(context).textTheme.displayMedium,
              onChanged: (value) {
                gameDetailBloc.add(GameDetailEvent.nameChanged(value));
              },
            ),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.all(size.width * 0.02),
                child: CustomButton(
                    function: () {
                      context.router.popAndPush(const GameDetailRoute());
                    },
                    child: Text(
                      'Next',
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(color: Theme.of(context).primaryColor),
                    )),
              )
            ],
          ),
        );
      });
}
