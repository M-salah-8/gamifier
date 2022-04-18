import 'package:flutter/material.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';

class ScoreCard extends StatelessWidget {
  final UserScorePrimitive score;
  const ScoreCard({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        // margin:  EdgeInsets.symmetric(horizontal: size.width *.01),
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: PopupMenuButton(
          child: Text(score.level.toString(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text(score.userName,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium),
              )
            ];
          }),
    ));
  }
}
