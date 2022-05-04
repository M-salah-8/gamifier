import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_request_bloc.dart';
import 'package:gamifier/application/friends/friend_request/friend_search/friend_search_bloc.dart';
import 'package:gamifier/presentation/core/loading.dart';
import 'package:gamifier/presentation/core/custom_card.dart';
import 'package:gamifier/presentation/routes/router.gr.dart';

String email = 'empty';
search(BuildContext context) {
  BlocProvider.of<FriendSearchBloc>(context)
      .add(FriendSearchEvent.emailSearched(email));
}

userDialog(BuildContext context) {
  final size = MediaQuery.of(context).size;

  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            title: const Text(
              'send request:',
            ),
            content: SizedBox(
              height: size.height * .1,
              width: size.width * .75,
              child: BlocBuilder<FriendSearchBloc, FriendSearchState>(
                builder: (context, state) {
                  return state.map(initial: (_) {
                    return Center(
                      child: TextField(
                        style: Theme.of(context).textTheme.displayMedium,
                        decoration: const InputDecoration(
                            suffixIcon: SearchButton(),
                            // IconButton(
                            //   icon: Icon(Icons.search),
                            //   onPressed: null,
                            // ),
                            hintText: 'search by email',
                            // label: Text('search by email'),
                            counterText: ''),
                        onChanged: (value) {
                          email = value;
                        },
                      ),
                    );
                  }, loaded: (_) {
                    return const SizedBox.square(
                        dimension: 50, child: Center(child: Loading()));
                  }, received: (e) {
                    return CustomCard(
                        widget: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(e.gamifierUser.name,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayMedium),
                        ),
                        Container(
                          color: Theme.of(context).primaryColor,
                          child: TextButton(
                            child: Text(
                              'send',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                  ),
                            ),
                            onPressed: () {
                              BlocProvider.of<FriendRequestBloc>(context).add(
                                  FriendRequestEvent.requestSended(
                                      e.gamifierUser));
                              context.router
                                  .popUntilRouteWithName(FriendsRoute.name);
                            },
                          ),
                        )
                      ],
                    ));
                  }, failed: (e) {
                    return Text(
                      e.failer,
                      style: Theme.of(context).textTheme.displayMedium,
                    );
                  });
                },
              ),
            ));
      });
}

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        search(context);
      },
      icon: const Icon(Icons.search),
    );
  }
}
