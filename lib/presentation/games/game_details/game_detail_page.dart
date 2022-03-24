import 'package:flutter/material.dart';
import 'package:gamifier/domain/game/game.dart';
import 'package:gamifier/presentation/games/game_details/widget/game_todo_list.dart';

class GameDetailPage extends StatelessWidget {
  final Game game;
  const GameDetailPage({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameTodoList(gameTodos: game.gameTodos),
    );
  }
}
