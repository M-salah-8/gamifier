import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gamifier/application/friends/friend_request/friend_request_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_search/friend_search_bloc.dart';
import 'package:gamifier/application/friends/friend_watcher/friend_watcher_bloc.dart';
import 'package:gamifier/presentation/core/app_bar.dart';
import 'package:gamifier/presentation/friends/widget/friend_card.dart';
import 'package:gamifier/presentation/friends/widget/user_dialog.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';

class FriendsList extends HookWidget {
  final bool addFriend;
  final GamePrimitive? game;
  const FriendsList({
    Key? key,
    required this.addFriend,
    this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loading = useState(false);
    return Scaffold(

        // to add new friends => open user search dialog
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(15.0),
          child: FloatingActionButton.extended(
            onPressed: () {
              BlocProvider.of<FriendSearchBloc>(context)
                  .add(const FriendSearchEvent.initialed());
              userDialog(context);
            },
            label: Text(
              'Add Friends',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
        ),
        body: Column(
          children: [
            CustomAppBar(
              title: Text(
                'Friends',
                style:
                    TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
              ),
            ),
            // see if the request is done or listen to the errors
            Expanded(
              child: SizedBox(
                child: BlocListener<FriendRequestBloc, FriendRequestState>(
                  listenWhen: (previous, current) =>
                      current != const FriendRequestState.initial(),
                  listener: (context, state) {
                    state.map(
                      initial: (_) {},
                      // to toggel the hook value so the progress indicator appear
                      loadInProgress: (_) {
                        loading.value = true;
                      },
                      failureOrSuccess: (e) {
                        // toggle hook again to make the progress disappear
                        loading.value = false;
                        FlushbarHelper.createError(
                          message: e.failuerOrSuccess,
                        ).show(context);
                      },
                    );
                  },
                  child: Stack(
                    children: [
                      BlocBuilder<FriendWatcherBloc, FriendWatcherState>(
                          builder: (context, state) {
                        return state.map(initial: (_) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }, loadInProgress: (_) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }, loadSuccess: (e) {
                          return ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            itemCount: e.friends.length,
                            itemBuilder: (context, index) {
                              return e.friends.isEmpty
                                  ? const Center(child: Text('empty'))
                                  : FriendCard(
                                      friend: e.friends[index],
                                      addFriend: addFriend,
                                      game: game,
                                    );
                            },
                          );
                        });
                      }),
                      if (loading.value) ...[
                        IgnorePointer(
                          ignoring: true,
                          child: Container(
                            color:
                                Theme.of(context).primaryColor.withOpacity(.20),
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                        )
                      ]
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
