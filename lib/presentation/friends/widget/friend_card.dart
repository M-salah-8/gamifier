import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/game/game_adding_friend/game_adding_friend_bloc.dart';
import 'package:gamifier/presentation/friends/misc/friends_presentation_class.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';

class FriendCard extends StatelessWidget {
  final GamifierUserPrimitive friend;
  final GamePrimitive? game;
  final bool addFriend;
  const FriendCard({
    Key? key,
    required this.friend,
    required this.addFriend,
    this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Theme.of(context).primaryColor,
              ),
              borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
          child: Center(
              child: Text(friend.name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium))),
      onTap: addFriend
          ? () {
              game == null
                  ? Error()
                  : BlocProvider.of<GameAddingFriendBloc>(context)
                      .add(GameAddingFriendEvent.addFriend(game!, friend));
            }
          : () {},
      onLongPress: () {},
    );
  }
}
