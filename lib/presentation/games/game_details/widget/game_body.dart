import 'package:gamifier/presentation/core/loading.dart';
import 'package:gamifier/presentation/games/game_details/widget/flying_score.dart';
import 'package:gamifier/presentation/games/game_details/widget/game_todo_list.dart';
import 'package:gamifier/presentation/games/game_details/widget/scores.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:flutter/material.dart';

class GameBody extends StatelessWidget {
  const GameBody(
      {Key? key,
      required this.editingMood,
      required this.loading,
      required this.gameTodos,
      required this.isEditing,
      required this.friendsScores,
      required this.gameId,
      required this.level,
      required this.currentUserId})
      : super(key: key);

  final String gameId;
  final int level;
  final String currentUserId;
  final bool isEditing;
  final List<UserScorePrimitive>? friendsScores;
  final List<GameTodoPrimitive> gameTodos;
  final ValueNotifier<bool> editingMood;
  final ValueNotifier<bool> loading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            if (!editingMood.value && isEditing)
              Scores(friendsScores: friendsScores, level: level.toString()),
            Expanded(
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //////////////////////////////////// todos
                    Expanded(
                      flex: 2,
                      child: GameTodoList(
                          currentUserId: currentUserId,
                          gameId: gameId,
                          level: level,
                          editingMood: editingMood.value,
                          gameTodos: gameTodos,
                          isEditing: isEditing),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const FlyingScore(),
        //////////////// loading screen for add friend
        if (loading.value) const Center(child: Loading()),
      ],
    );
  }
}
