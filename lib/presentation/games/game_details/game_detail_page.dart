import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gamifier/application/game/game_adding_friend/game_adding_friend_bloc.dart';
import 'package:gamifier/application/game/game_detail/game_detail_bloc.dart';
import 'package:gamifier/application/game/game_editing/game_editing_bloc.dart';
import 'package:gamifier/presentation/core/flush_bar.dart';
import 'package:gamifier/presentation/core/gradient_background.dart';
import 'package:gamifier/presentation/games/game_details/widget/bottom_bar.dart';
import 'package:gamifier/presentation/games/game_details/widget/game_body.dart';
import 'widget/game_name_changing_field.dart';

class GameDetailPage extends HookWidget {
  const GameDetailPage({
    Key? key,
  }) : super(key: key);

  get duration => null;

  @override
  Widget build(BuildContext context) {
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
                flushBar(context, 'friend added', SuccessOrError.success);
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
          return GradientBackground(
            scaffold: Scaffold(
              ///////////////////////////////////////////////////////
              appBar: AppBar(
                centerTitle: true,
                title: editingMood.value || !state.isEditing
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            state.game.name,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          GameNameChangingField(
                            isEditing: state.isEditing,
                          ),
                        ],
                      )
                    : Text(
                        state.game.name,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
              ),
              ////////////////////////////////////////////////////
              body: GameBody(
                editingMood: editingMood,
                loading: loading,
                currentUserId: state.currentUser.id,
                gameId: state.game.id,
                level: state.level,
                gameTodos: state.game.gameTodos,
                isEditing: state.isEditing,
                friendsScores: state.friendsScores,
              ),
              //////////////////////////////////////////////////////
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              floatingActionButton: state.isAdmin
                  ? BottomBar(
                      game: state.game,
                      editingMood: editingMood.value,
                      isEditing: state.isEditing,
                    )
                  : null,
            ),
          );
        },
      ),
    );
  }
}
