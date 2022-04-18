import 'package:flutter/material.dart';
import 'package:gamifier/presentation/games/game_details/widget/score_card.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';

class UsersScoresList extends StatelessWidget {
  final List<UserScorePrimitive>? scores;
  const UsersScoresList({Key? key, this.scores}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(
          size.width * .01, size.height * .01, size.width * .01, 0),
      itemCount: scores?.length,
      itemBuilder: (context, index) {
        return ScoreCard(
          score: scores![index],
        );
      },
    );
  }
}
