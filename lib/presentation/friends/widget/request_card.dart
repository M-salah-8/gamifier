import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_request_bloc.dart';
import 'package:gamifier/presentation/core/custom_card.dart';
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
      child: CustomCard(
        widget: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(6), topLeft: Radius.circular(6)),
              child: Container(
                  color: Colors.red,
                  child: IconButton(
                    icon: Icon(
                      Icons.cancel_outlined,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    onPressed: () {
                      BlocProvider.of<FriendRequestBloc>(context)
                          .add(FriendRequestEvent.requestCancelled(request.id));
                      context.router
                          .popUntilRouteWithName(GameOverviewRoute.name);
                    },
                  )),
            ),
            Text(request.sender.name,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayMedium),
            Container(
                color: Theme.of(context).primaryColor,
                child: IconButton(
                  icon: Icon(
                    Icons.check,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  onPressed: () {
                    BlocProvider.of<FriendRequestBloc>(context)
                        .add(FriendRequestEvent.requestAccepted(request.id));
                    context.router
                        .popUntilRouteWithName(GameOverviewRoute.name);
                  },
                )),
          ],
        ),
      ),
    );
  }
}
