import 'package:flutter/material.dart';
import 'package:gamifier/presentation/core/custom_button.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';

class ScoreCard extends StatelessWidget {
  final UserScorePrimitive score;
  const ScoreCard({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
                function: null,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(score.userName,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.displayMedium),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
              child: Text(
                score.level.toString(),
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(color: Theme.of(context).primaryColor),
              ),
              function: null,
            ),
          ),
        ],
      ),
    );
  }
}

    // Center(
    //   child: Container(
    //     decoration: BoxDecoration(
    //         border: Border.all(
    //           width: 2,
    //           color: Theme.of(context).primaryColor,
    //         ),
    //         borderRadius: BorderRadius.circular(30)),
    //     padding: const EdgeInsets.all(5),
    //     margin: const EdgeInsets.all(5),
    //     child: PopupMenuButton(
    //         child: Text(score.level.toString(),
    //             textAlign: TextAlign.center,
    //             style: Theme.of(context).textTheme.displayMedium),
    //         itemBuilder: (context) {
    //           return [
    //             PopupMenuItem(
    //               child: Text(score.userName,
    //                   textAlign: TextAlign.center,
    //                   style: Theme.of(context).textTheme.displayMedium),
    //             )
    //           ];
    //         }),
    //   ),
    // );