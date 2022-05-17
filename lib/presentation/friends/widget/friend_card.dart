import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_adding_friend/game_adding_friend_bloc.dart';
import 'package:gamifier/presentation/core/circle_button.dart';
import 'package:gamifier/presentation/core/custom_button.dart';
import 'package:gamifier/presentation/friends/misc/friends_presentation_class.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class FriendCard extends StatelessWidget {
  final GamifierUserPrimitive friend;
  final GamePrimitive? game;
  final bool addFriendToGame;
  const FriendCard({
    Key? key,
    required this.friend,
    required this.addFriendToGame,
    this.game,
  }) : super(key: key);

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
                  child: Text(friend.name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayMedium),
                )),
          ),
          if (addFriendToGame)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleButton(
                button: Text(
                  '+',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(color: Theme.of(context).primaryColor),
                ),
                function: () {
                  BlocProvider.of<GameAddingFriendBloc>(context)
                      .add(GameAddingFriendEvent.addFriend(game!, friend));
                  context.router.popUntilRouteWithName(GameDetailRoute.name);
                },
              ),
            ),
        ],
      ),
    );
  }
}
