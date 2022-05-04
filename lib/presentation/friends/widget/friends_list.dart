import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gamifier/application/friends/friend_request/friend_request_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_search/friend_search_bloc.dart';
import 'package:gamifier/application/friends/friend_watcher/friend_watcher_bloc.dart';
import 'package:gamifier/presentation/core/app_bar.dart';
import 'package:gamifier/presentation/core/flush_bar.dart';
import 'package:gamifier/presentation/core/loading.dart';
import 'package:gamifier/presentation/friends/widget/friend_card.dart';
import 'package:gamifier/presentation/friends/widget/user_dialog.dart';
import 'package:gamifier/presentation/games/misc/game_presentaion_classes.dart';

class FriendsList extends HookWidget {
  final bool addFriendToGame;
  final GamePrimitive? game;
  const FriendsList({
    Key? key,
    required this.addFriendToGame,
    this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final loading = useState(false);
    return Scaffold(

        // to add new friends => open user search dialog
        floatingActionButton:
            // IgnorePointer(
            //   ignoring: addFriendToGame,
            //   child: Visibility(
            //     visible: !addFriendToGame,
            //  child:
            Padding(
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
        // ),
        // ),
        body: Column(
          children: [
            CustomAppBar(
              title: Text(
                'Friends',
                style: Theme.of(context).textTheme.titleLarge,
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
                      loadInProgress: (_) {
                        // to toggel the hook value so the progress indicator appear
                        loading.value = true;
                      },
                      failureOrSuccess: (e) {
                        // toggle hook again to make the progress disappear
                        loading.value = false;
                        flushBar(
                            context,
                            e.failuerOrSuccess,
                            // TODO do from bloc
                            e.failuerOrSuccess == 'request sent'
                                ? SuccessOrError.success
                                : SuccessOrError.error);
                      },
                    );
                  },
                  // get friends list
                  child: Stack(
                    children: [
                      BlocBuilder<FriendWatcherBloc, FriendWatcherState>(
                          builder: (context, state) {
                        return state.map(initial: (_) {
                          return const Center(
                            child: Loading(),
                          );
                        }, loadInProgress: (_) {
                          return const Center(
                            child: Loading(),
                          );
                        }, loadSuccess: (e) {
                          return ListView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * .2),
                            itemCount: e.friends.length,
                            itemBuilder: (context, index) {
                              return e.friends.isEmpty
                                  ? const Center(child: Text('empty'))
                                  : FriendCard(
                                      friend: e.friends[index],
                                      addFriendToGame: addFriendToGame,
                                      game: game,
                                    );
                            },
                          );
                        });
                      }),
                      if (loading.value) ...[
                        const IgnorePointer(
                            ignoring: true, child: Center(child: Loading()))
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
