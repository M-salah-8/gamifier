import 'package:flutter/material.dart';
import 'package:gamifier/presentation/core/gradient_background.dart';
import 'package:gamifier/presentation/friends/widget/add_friend.dart';
import 'package:gamifier/presentation/friends/widget/friends_list.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';

class FriendsPage extends StatelessWidget {
  final bool addfriendToGame;
  final GamePrimitive? game;
  const FriendsPage({Key? key, required this.addfriendToGame, this.game})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      scaffold: Scaffold(
        appBar: AppBar(
          title: Text(
            'Friends',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: FriendsList(addFriendToGame: addfriendToGame, game: game),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const AddFriend(),
        ),
      ),
    );
  }
}
