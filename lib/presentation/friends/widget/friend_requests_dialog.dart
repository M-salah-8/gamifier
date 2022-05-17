import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_request_watcher/friend_request_watcher_bloc.dart';
import 'package:gamifier/presentation/core/alert_dialog_title.dart';
import 'package:gamifier/presentation/core/loading.dart';
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
    return AlertDialog(
        titlePadding: const EdgeInsets.all(0),
        title: const AlertDialogTitle(title: 'Friend Requests'),
        contentPadding: const EdgeInsets.all(0),
        content: SizedBox(
          height: size.height * .5,
          width: size.width * .75,
          child:
              BlocBuilder<FriendRequestWatcherBloc, FriendRequestWatcherState>(
            builder: (context, state) {
              return state.map(initial: (_) {
                return const SizedBox.square(
                    dimension: 50, child: Center(child: Loading()));
              }, loadInProgress: (_) {
                return const SizedBox.square(
                    dimension: 50, child: Center(child: Loading()));
              }, loadSuccess: (e) {
                return Center(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: e.request.length,
                      itemBuilder: (context, index) {
                        return e.request.isEmpty
                            ? const Center(child: Text('empty'))
                            : RequestCard(request: e.request[index]);
                      },
                    ),
                  ),
                );
              });
            },
          ),
        ));
  }
}
