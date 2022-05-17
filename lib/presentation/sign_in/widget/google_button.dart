import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class GoogleButton extends HookWidget {
  final Function? function;
  final Widget child;
  const GoogleButton({required this.function, required this.child, Key? key})
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
              borderRadius: const BorderRadius.all(Radius.elliptical(20, 20)),
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 113, 215, 255),
                    Color.fromARGB(255, 209, 241, 253),
                    Color.fromARGB(255, 232, 245, 250),
                  ])),
          child: Padding(padding: const EdgeInsets.all(10), child: child)),
      onTap: () {
        if (function != null) {
          isPressed.value = true;
          Future.delayed(const Duration(milliseconds: 200), () {
            isPressed.value = false;
          });
          Future.delayed(const Duration(milliseconds: 350), () {
            function!.call();
          });
        }
      },
    );
  }
}
