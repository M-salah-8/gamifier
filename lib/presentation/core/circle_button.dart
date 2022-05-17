import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CircleButton extends HookWidget {
  final Function function;
  final Widget button;
  const CircleButton({required this.function, required this.button, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPressed = useState(false);
    return GestureDetector(
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          decoration: BoxDecoration(
              boxShadow: !isPressed.value
                  ? [
                      const BoxShadow(
                          color: Color.fromARGB(255, 84, 85, 84),
                          offset: Offset(4, 4),
                          spreadRadius: 1,
                          blurRadius: 15),
                      BoxShadow(
                          color: Colors.white.withOpacity(0.9),
                          offset: const Offset(-4, -4),
                          spreadRadius: 1,
                          blurRadius: 15),
                    ]
                  : null,
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 185, 224, 187),
                    Color.fromARGB(255, 248, 248, 248),
                    Color.fromARGB(255, 248, 248, 248),
                  ])),
          child: Padding(padding: const EdgeInsets.all(10), child: button)),
      onTap: () {
        isPressed.value = true;
        Future.delayed(const Duration(milliseconds: 200), () {
          isPressed.value = false;
        });
        Future.delayed(const Duration(milliseconds: 350), () {
          function.call();
        });
      },
    );
  }
}
