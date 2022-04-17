import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_search/friend_search_bloc.dart';
import 'package:gamifier/application/friends/friend_watcher/friend_watcher_bloc.dart';
import 'package:gamifier/presentation/friends/widget/friend_card.dart';
import 'package:gamifier/presentation/friends/widget/user_dialog.dart';

class FriendsList extends StatelessWidget {
  const FriendsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Friends',
          style: TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
        ),
      ),
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
      body: BlocBuilder<FriendWatcherBloc, FriendWatcherState>(
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
                  : FriendCard(name: e.friends[index].sender.name);
            },
          );
        });
      }),
    );
  }
}
