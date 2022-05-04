import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_search/friend_search_bloc.dart';
import 'package:gamifier/presentation/friends/widget/user_dialog.dart';

// TODO delete if not needed
class AddFriend extends StatelessWidget {
  const AddFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
          child: Center(
              child: Text('Add Friends',
                  style: Theme.of(context).textTheme.titleLarge))),
      onTap: () {
        BlocProvider.of<FriendSearchBloc>(context)
            .add(const FriendSearchEvent.initialed());
        userDialog(context);
      },
      onLongPress: () {},
    );
  }
}
