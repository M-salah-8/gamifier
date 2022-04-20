import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_request_watcher/friend_request_watcher_bloc.dart';
import 'package:gamifier/presentation/friends/widget/request_card.dart';

friendRequestsDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return const RequestAlertDialog();
      });
}

class RequestAlertDialog extends StatelessWidget {
  const RequestAlertDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .5,
      width: size.width * .75,
      child: AlertDialog(
          title: const Text(
            'friend requests:',
            style: TextStyle(fontSize: 20),
          ),
          content:
              BlocBuilder<FriendRequestWatcherBloc, FriendRequestWatcherState>(
            builder: (context, state) {
              return state.map(initial: (_) {
                return const SizedBox.square(
                    dimension: 50,
                    child: Center(child: CircularProgressIndicator()));
              }, loadInProgress: (_) {
                return const SizedBox.square(
                    dimension: 50,
                    child: Center(child: CircularProgressIndicator()));
              }, loadSuccess: (e) {
                return ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: e.request.length,
                  itemBuilder: (context, index) {
                    return e.request.isEmpty
                        ? const Center(child: Text('empty'))
                        : RequestCard(request: e.request[index]);
                  },
                );
              });
            },
          )),
    );
  }
}
