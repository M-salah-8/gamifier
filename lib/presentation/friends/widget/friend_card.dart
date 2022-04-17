import 'package:flutter/material.dart';

class FriendCard extends StatelessWidget {
  final String name;
  const FriendCard({
    Key? key,
    required this.name,
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
              child:
                  Text(name, style: Theme.of(context).textTheme.bodyMedium))),
      onTap: () {},
      onLongPress: () {},
    );
  }
}
