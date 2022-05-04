import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget widget;
  const CustomCard({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Theme.of(context).primaryColor,
            ),
            borderRadius: BorderRadius.circular(8)),
        // padding: const EdgeInsets.all(8),
        // margin: const EdgeInsets.all(8),
        child: widget);
  }
}
