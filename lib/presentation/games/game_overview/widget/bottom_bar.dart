import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_request_watcher/friend_request_watcher_bloc.dart';
import 'package:gamifier/application/friends/friend_watcher/friend_watcher_bloc.dart';
import 'package:gamifier/presentation/core/circle_button.dart';
import 'package:gamifier/presentation/friends/widget/friend_requests_dialog.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _showRequestDialog() {
      BlocProvider.of<FriendRequestWatcherBloc>(context)
          .add(FriendRequestWatcherEvent.watchRequestStarted());
      friendRequestsDialog(context);
    }

    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleButton(
            button: Icon(
              Icons.people,
              color: Theme.of(context).primaryColor,
            ),
            function: () {
              BlocProvider.of<FriendWatcherBloc>(context)
                  .add(FriendWatcherEvent.watchGamesStarted());
              context.router.popAndPush(FriendsRoute(addfriendToGame: false));
            },
          ),
          CircleButton(
            button: Icon(
              Icons.notifications,
              color: Theme.of(context).primaryColor,
            ),
            function: _showRequestDialog,
          ),
        ],
      ),
    );
  }
}
