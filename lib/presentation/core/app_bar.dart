import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget? leading;
  final Widget title;
  final Widget? action;
  const CustomAppBar({Key? key, this.leading, required this.title, this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Theme.of(context).primaryColor,
                ),
                borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  leading == null ? const SizedBox() : leading!,
                  title,
                  action == null ? const SizedBox() : action!,
                ])));
  }
}
