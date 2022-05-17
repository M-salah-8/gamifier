import 'package:flutter/material.dart';
import 'package:gamifier/presentation/core/custom_button.dart';
import 'package:gamifier/presentation/games/game_details/widget/friends_scores_dialog.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';

class Scores extends StatelessWidget {
  const Scores({Key? key, required this.friendsScores, required this.level})
      : super(key: key);

  final String level;
  final List<UserScorePrimitive>? friendsScores;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(size.width * 0.02),
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 3,
            child: CustomButton(
                function: () {
                  friendsScoresDialog(context, friendsScores);
                },
                child: Text(
                  'Friends\nScores',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                )),
          ),
          const Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
            flex: 6,
            child: Container(
                padding: EdgeInsets.all(size.height * 0.02),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  level,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayMedium,
                )),
          ),
        ],
      ),
    );
  }
}
