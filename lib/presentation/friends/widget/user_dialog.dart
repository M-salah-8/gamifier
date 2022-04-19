import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_request_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_search/friend_search_bloc.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

userDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            title: const Text(
              'send request:',
              style: TextStyle(fontSize: 20),
            ),
            content: BlocBuilder<FriendSearchBloc, FriendSearchState>(
              builder: (context, state) {
                return state.map(initial: (_) {
                  return TextField(
                    decoration: const InputDecoration(
                        hintText: 'search by email',
                        // label: Text('search by email'),
                        counterText: ''),
                    onSubmitted: (value) async {
                      BlocProvider.of<FriendSearchBloc>(context)
                          .add(FriendSearchEvent.emailSearched(value));
                    },
                  );
                }, loaded: (_) {
                  return const SizedBox.square(
                      dimension: 50,
                      child: Center(child: CircularProgressIndicator()));
                }, received: (e) {
                  return InkWell(
                    onTap: () {
                      BlocProvider.of<FriendRequestBloc>(context).add(
                          FriendRequestEvent.requestSended(e.gamifierUser));
                      context.router.popUntilRouteWithName(FriendsRoute.name);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Theme.of(context).primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(2),
                      child: Text(
                        e.gamifierUser.name,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }, failed: (e) {
                  return Text(e.failer);
                });
              },
            ));
      });
}
