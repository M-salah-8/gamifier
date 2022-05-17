import 'package:flutter/material.dart';
import 'package:gamifier/presentation/core/alert_dialog_title.dart';
import 'package:gamifier/presentation/games/game_details/widget/score_card.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';

friendsScoresDialog(
    BuildContext context, List<UserScorePrimitive>? friendsScores) {
  final size = MediaQuery.of(context).size;
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            titlePadding: const EdgeInsets.all(0),
            contentPadding: const EdgeInsets.all(0),
            title: const AlertDialogTitle(title: 'Friends Scores'),
            content: SizedBox(
              height: size.height * .5,
              width: size.width * .75,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                child: ListView.builder(
                  padding: EdgeInsets.fromLTRB(
                      size.width * .01, size.height * .01, size.width * .01, 0),
                  itemCount: friendsScores!.length,
                  itemBuilder: (context, index) {
                    return ScoreCard(
                      score: friendsScores[index],
                    );
                  },
                ),
              ),
            ));
      });
}
