import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_actor/game_actor_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/presentation/games/game_details/widget/game_todo_list.dart';
import 'package:gamifier/presentation/games/game_details/widget/users_scores_list.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class GameDetailPage extends StatelessWidget {
  final GamePrimitive? game;
  final List<UserScorePrimitive>? scores;
  const GameDetailPage({
    Key? key,
    required this.game,
    this.scores,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<GameDetailBloc, GameDetailState>(
      builder: (context, state) {
        // find current user scores
        UserScorePrimitive? score = scores
            ?.where((score) => score.gamifierUserId == state.currentUser.id)
            .first;
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              state.isEditing ? game!.name : 'add todos',
              style:
                  TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
            ),
            actions: [
              scores != null
                  ? Container(
                      margin: const EdgeInsets.only(right: 4),
                      child: TextButton(
                        child: const Text(
                          'delete',
                          style: TextStyle(color: Colors.red),
                        ),
                        onPressed: () {
                          _deleteDialog(context,
                              BlocProvider.of<GameActorBloc>(context), game!);
                        },
                      ),
                    )
                  : Container(
                      margin: const EdgeInsets.only(right: 4),
                      child: TextButton(
                        child: const Text(
                          'cancel',
                          style: TextStyle(color: Colors.red),
                        ),
                        onPressed: () {
                          context.router.pop();
                        },
                      ),
                    )
            ],
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    width: size.width * .3,
                    margin: EdgeInsets.symmetric(
                        horizontal: size.width * .02,
                        vertical: size.height * .01),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Theme.of(context).primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Text('Scores',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 20)),
                        Expanded(
                            child: SizedBox(
                                child: UsersScoresList(scores: scores))),
                        Container(
                          margin: EdgeInsets.all(size.width * .01),
                          child: FloatingActionButton.extended(
                            heroTag: 12,
                            onPressed: () {
                              // TODO go to friends
                              context.router.push(
                                  FriendsRoute(addfriend: true, game: game));
                            },
                            label: Text('Add\nFriend',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor)),
                          ),
                        )
                      ],
                    )),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      size.width * .05, size.width * .05, size.width * .05, 0),
                  width: size.width * .40,
                  child: GameTodoList(
                      userTodos: score?.gameTodos,
                      gameTodos: state.game.gameTodos,
                      isEditing: state.isEditing),
                ),
              ),
            ],
          ),
          floatingActionButton: IgnorePointer(
              ignoring: state.isEditing,
              child: Visibility(
                  visible: !state.isEditing,
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
                        context.router
                            .popUntilRouteWithName(GameOverviewRoute.name);
                      },
                    ),
                  ))),
        );
      },
    );
  }

  _deleteDialog(
      BuildContext context, GameActorBloc gameActorBloc, GamePrimitive game) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('DELETE:'),
            content: Text(game.name),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    gameActorBloc.add(GameActorEvent.deleted(game.toDomain()));
                    context.router
                        .popUntilRouteWithName(GameOverviewRoute.name);
                  },
                  child: const Text(
                    'DELETE',
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          );
        });
  }
}
