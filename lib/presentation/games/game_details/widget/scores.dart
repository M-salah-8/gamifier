import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_watcher/friend_watcher_bloc.dart';
import 'package:gamifier/presentation/games/game_details/widget/friends_scores.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class Scores extends StatelessWidget {
  const Scores({
    Key? key,
    required this.size,
    required this.isAdmin,
    required this.game,
    required this.isEditing,
    required this.friendsScores,
    required this.currentUserId,
    required this.currentUserLevel,
    required this.editingMood,
  }) : super(key: key);

  final String currentUserId;
  final List<UserScorePrimitive> friendsScores;
  final bool isEditing;
  final bool editingMood;
  final bool isAdmin;
  final Size size;
  final GamePrimitive? game;
  final int currentUserLevel;

  @override
  Widget build(BuildContext context) {
    return
        // scores container
        Container(
            margin: EdgeInsets.symmetric(
                horizontal: size.width * .02, vertical: size.height * .01),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Theme.of(context).primaryColor,
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text('your\nscore',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge),
                // the current user level
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Theme.of(context).primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(5),
                    child: Text(
                      currentUserLevel.toString(),
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
                /////////////////////
                Text('Friends\nscores',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge),
                Expanded(
                    child: SizedBox(
                        child: FriendsScoresList(
                  friendsScores: friendsScores,
                  currentUserId: currentUserId,
                ))),
                // add friend button (only used by admin)
                IgnorePointer(
                  ignoring: !isEditing || !isAdmin || editingMood,
                  child: Visibility(
                    visible: isEditing && isAdmin && !editingMood,
                    child: Container(
                      margin: EdgeInsets.all(size.width * .01),
                      child: FloatingActionButton.extended(
                        heroTag: 12,
                        onPressed: () {
                          BlocProvider.of<FriendWatcherBloc>(context)
                              .add(FriendWatcherEvent.watchGamesStarted());
                          context.router.push(
                              FriendsRoute(addfriendToGame: true, game: game));
                        },
                        label: Text('Add\nFriend',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color: Theme.of(context).primaryColor)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            ));
  }
}
