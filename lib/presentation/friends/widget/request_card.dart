import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_request_bloc.dart';
import 'package:gamifier/application/friends/friend_request_watcher/friend_request_watcher_bloc.dart';
import 'package:gamifier/presentation/core/circle_button.dart';
import 'package:gamifier/presentation/core/custom_button.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleButton(
              button: const Icon(
                Icons.cancel_outlined,
                color: Colors.red,
              ),
              function: () {
                BlocProvider.of<FriendRequestBloc>(context)
                    .add(FriendRequestEvent.requestAccepted(request.id));
                context.router.popUntilRouteWithName(GameOverviewRoute.name);
              },
            ),
          ),
          Expanded(
            child: CustomButton(
                function: null,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(request.sender.name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayMedium),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleButton(
              button: Icon(
                Icons.check,
                color: Theme.of(context).primaryColor,
              ),
              function: () {
                BlocProvider.of<FriendRequestBloc>(context)
                    .add(FriendRequestEvent.requestAccepted(request.id));
                context.router.popUntilRouteWithName(GameOverviewRoute.name);
              },
            ),
          ),
        ],
      ),
    );
  }
}
