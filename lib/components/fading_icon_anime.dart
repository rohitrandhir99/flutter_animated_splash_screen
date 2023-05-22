import 'package:flutter/material.dart';
// imports
import 'package:simple_animations/simple_animations.dart';


class FadingAnimation extends StatelessWidget {
  FadingAnimation({super.key});

  // creating an animated color change widget variable
  // we are marking this widget as final because we 
  // are not going to change the code.
  final Widget iconAnimation = PlayAnimationBuilder<Color?>(
    tween: ColorTween(begin: Colors.blue, end: Colors.white), // define tween
    duration: const Duration(seconds: 3), // define duration
    builder: (context, value, _) {
      return Icon(
        Icons.luggage_outlined,
        color: value,
        size: 130,
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return iconAnimation;
  }
}
