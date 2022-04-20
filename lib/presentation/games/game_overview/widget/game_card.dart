import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_actor/game_actor_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_getter/game_getter_bloc.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class GameCard extends StatelessWidget {
  final GameKeyPrimitive game;
  const GameCard({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameGetterBloc, GameGetterState>(
      listener: (context, state) {
        state.map(
            initial: (e) {},
            loadInProgress: (e) {},
            loadSuccess: (e) {
              BlocProvider.of<GameDetailBloc>(context)
                  .add(GameDetailEvent.initialized(e.gameDetails.game));
              context.router.push(GameDetailRoute(
                  game: e.gameDetails.game, scores: e.gameDetails.usersScores));
            });
      },
      child: InkWell(
        child: Card(
            // margin: const EdgeInsets.all(20),
            child: Center(
                child: Text(game.gameName,
                    style: Theme.of(context).textTheme.bodyMedium))),
        onTap: () {
          BlocProvider.of<GameGetterBloc>(context)
              .add(GameGetterEvent.getGame(game.gameId));
        },
        onLongPress: () {},
      ),
    );
  }
}

// _deleteDialog(BuildContext context, GameActorBloc gameActorBloc, Game game) {
//   showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('DELETE:'),
//           content: Text(game.name),
//           actions: <Widget>[
//             TextButton(
//                 onPressed: () {
//                   gameActorBloc.add(GameActorEvent.deleted(game));
//                 },
//                 child: const Text(
//                   'DELETE',
//                   style: TextStyle(color: Colors.red),
//                 ))
//           ],
//         );
//       });
// }
