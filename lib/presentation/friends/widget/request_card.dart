import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_request_bloc.dart';
import 'package:gamifier/presentation/friends/misc/friends_presentation_class.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

class RequestCard extends StatelessWidget {
  final FriendRequestPrimitive request;
  const RequestCard({
    Key? key,
    required this.request,
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
              child: Text(request.sender.name,
                  style: Theme.of(context).textTheme.bodyLarge))),
      onTap: () {
        BlocProvider.of<FriendRequestBloc>(context)
            .add(FriendRequestEvent.requestAccepted(request.id));
        context.router.popUntilRouteWithName(GameOverviewRoute.name);
      },
      onLongPress: () {},
    );
  }
}
