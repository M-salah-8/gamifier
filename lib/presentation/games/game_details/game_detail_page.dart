import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gamifier/application/game/game_actor/game_actor_bloc.dart';
import 'package:gamifier/application/game/game_adding_friend/game_adding_friend_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_editing/game_editing_bloc.dart';
import 'package:gamifier/presentation/core/app_bar.dart';
import 'package:gamifier/presentation/core/flush_bar.dart';
import 'package:gamifier/presentation/core/loading.dart';
import 'package:gamifier/presentation/games/game_details/widget/create_button.dart';
import 'package:gamifier/presentation/games/game_details/widget/game_todo_list.dart';
import 'package:gamifier/presentation/games/game_details/widget/scores.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

import 'widget/game_name_changing_field.dart';

class GameDetailPage extends HookWidget {
  const GameDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    /// toogle loading on and off
    final loading = useState(false);

    /// toogle editing mood
    final editingMood = useState(false);

    return MultiBlocListener(
      listeners: [
        // see if friend is added
        BlocListener<GameAddingFriendBloc, GameAddingFriendState>(
            listener: (context, state) {
          state.map(
              initial: (_) {},
              loadInProgress: (_) {
                loading.value = true;
              },
              friendAdded: (e) {
                // update current state
                BlocProvider.of<GameDetailBloc>(context)
                    .add(GameDetailEvent.friendAdded(e.friendAdded));
                // end loading
                loading.value = false;
                // show success message
                flushBar(context, 'friend addes', SuccessOrError.success);
              },
              friendAddedFailure: (e) {
                loading.value = false;
                flushBar(context, e.friendAddedFailure, SuccessOrError.error);
              });
        }),
        // handel editing mood
        BlocListener<GameEditingBloc, GameEditingState>(
            listener: (context, state) {
          state.mapOrNull(editingStarted: (_) {
            editingMood.value = true;
          }, editingEnded: (_) {
            editingMood.value = false;
          }, oldGameState: (e) {
            BlocProvider.of<GameDetailBloc>(context)
                .add(GameDetailEvent.initialized(e.game, null));
          });
        }),
      ],
      child: BlocBuilder<GameDetailBloc, GameDetailState>(
        builder: (context, state) {
          // ################## UI #################
          return Scaffold(
            body: Stack(
              children: [
                Column(
                  children: [
                    //////////////////////// appbar
                    _gameDetailsAppbar(
                        context, state, state.isAdmin, editingMood.value),
                    Expanded(
                      //////////// body
                      child: SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //////////////////////////////////////// scores
                            Expanded(
                              child: Scores(
                                editingMood: editingMood.value,
                                currentUserId: state.currentUser.id,
                                currentUserLevel: state.level,
                                size: size,
                                game: state.game,
                                friendsScores: state.friendsScores,
                                isAdmin: state.isAdmin,
                                isEditing: state.isEditing,
                              ),
                            ),
                            //////////////////////////////////// todos
                            Expanded(
                              flex: 2,
                              child: GameTodoList(
                                  currentUserId: state.currentUser.id,
                                  gameId: state.game.id,
                                  level: state.level,
                                  editingMood: editingMood.value,
                                  gameTodos: state.game.gameTodos,
                                  isEditing: state.isEditing),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //////////////// loading screen for add friend
                if (loading.value) const Center(child: Loading()),
              ],
            ),
            /////////////////// create button to save the game
            /// appear only when game first created
            floatingActionButton: CreateButton(isEditing: state.isEditing),
          );
        },
      ),
    );
  }

  CustomAppBar _gameDetailsAppbar(BuildContext context, GameDetailState state,
      bool isAdmin, bool editingMood) {
    return CustomAppBar(
      // edit button only appear if isEditing is true and transform the page
      // to be in editing mode. then the button transform to save edits button
      // if isEditing is false a sizedBox provided to keep title in center,
      // button apears only to admin
      leading: isAdmin
          ? state.isEditing
              ? editingMood
                  ?
                  // in editing mood
                  TextButton(
                      child: Text(
                        'save',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge
                            ?.copyWith(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: () {
                        BlocProvider.of<GameEditingBloc>(context)
                            .add(GameEditingEvent.saved());
                      },
                    )
                  :
                  // to transform to editing mood
                  TextButton(
                      child: Text(
                        'edit',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge
                            ?.copyWith(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: () {
                        BlocProvider.of<GameEditingBloc>(context)
                            .add(GameEditingEvent.editingStarted(state.game));
                      },
                    )
              : const SizedBox(
                  width: 50,
                )
          : const SizedBox(
              width: 50,
            ),
      title: Row(
        children: [
          Text(
            state.isEditing ? state.game.name : 'Add Todos',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          // name editing button. Appear in editing mood
          if (editingMood)
            GameNameChangingField(
              isEditing: state.isEditing,
            )
        ],
      ),
      // if the game is getting created cancle button appears to get out without
      // saving, if the game is not new delete button appears put only to admin
      // if the game is getting edited cancel button appears to keep the game as
      // it is without savinge changes
      action: isAdmin
          ? state.isEditing
              ? editingMood
                  ?
                  // cancel editing
                  TextButton(
                      child: Text(
                        'cancel',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(color: Colors.red),
                      ),
                      onPressed: () {
                        BlocProvider.of<GameEditingBloc>(context)
                            .add(GameEditingEvent.canceled());
                      },
                    )
                  : TextButton(
                      child: Text(
                        'delete',
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(color: Colors.red),
                      ),
                      onPressed: () {
                        _deleteDialog(
                            context,
                            BlocProvider.of<GameActorBloc>(context),
                            state.game);
                      },
                    )
              :
              // cancel creating the game
              TextButton(
                  child: Text(
                    'cancel',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(color: Colors.red),
                  ),
                  onPressed: () {
                    context.router.pop();
                  },
                )
          : const SizedBox(
              width: 50,
            ),
    );
  }

  _deleteDialog(
      BuildContext context, GameActorBloc gameActorBloc, GamePrimitive game) {
    final size = MediaQuery.of(context).size;
    showDialog(
        context: context,
        builder: (context) {
          return SizedBox(
            height: size.height * .5,
            width: size.width * .75,
            child: AlertDialog(
              title: const Text('DELETE:'),
              content: Text(game.name),
              actions: <Widget>[
                TextButton(
                    onPressed: () {
                      gameActorBloc
                          .add(GameActorEvent.deleted(game.toDomain()));
                      context.router
                          .popUntilRouteWithName(GameOverviewRoute.name);
                    },
                    child: const Text(
                      'DELETE',
                      style: TextStyle(color: Colors.red),
                    ))
              ],
            ),
          );
        });
  }
}
