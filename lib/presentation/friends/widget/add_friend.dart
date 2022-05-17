import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_search/friend_search_bloc.dart';
import 'package:gamifier/presentation/core/circle_button.dart';
import 'package:gamifier/presentation/friends/widget/user_dialog.dart';

class AddFriend extends StatelessWidget {
  const AddFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleButton(
      button: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '+',
            style: Theme.of(context)
                .textTheme
                .displayLarge
                ?.copyWith(color: Theme.of(context).primaryColor),
          ),
          Icon(Icons.people, color: Theme.of(context).primaryColor)
        ],
      ),
      function: () {
        BlocProvider.of<FriendSearchBloc>(context)
            .add(const FriendSearchEvent.initialed());
        userDialog(context);
      },
    );
  }
}
