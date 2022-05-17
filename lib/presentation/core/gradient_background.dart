import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget scaffold;
  const GradientBackground({Key? key, required this.scaffold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromARGB(255, 199, 238, 201),
            Color.fromARGB(255, 199, 238, 201),
            Color.fromARGB(255, 199, 238, 201),
            Color.fromARGB(255, 199, 238, 201),
            Color.fromARGB(255, 167, 238, 171),
          ])),
      child: scaffold,
    );
  }
}
