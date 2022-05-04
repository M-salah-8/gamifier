import 'package:flutter/material.dart';
import 'package:gamifier/presentation/games/game_details/widget/score_card.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';

class FriendsScoresList extends StatelessWidget {
  final List<UserScorePrimitive>? friendsScores;
  final String currentUserId;
  const FriendsScoresList(
      {Key? key, this.friendsScores, required this.currentUserId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(
          size.width * .01, size.height * .01, size.width * .01, 0),
      itemCount: friendsScores!.length,
      itemBuilder: (context, index) {
        return ScoreCard(
          score: friendsScores![index],
        );
      },
    );
  }
}
