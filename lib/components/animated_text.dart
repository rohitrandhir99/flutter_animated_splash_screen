import 'package:flutter/material.dart';
import 'package:typewritertext/typewritertext.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return const TypeWriterText(
      text: Text(
        'Travellerz',
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
      ),
      duration: Duration(milliseconds: 200),
    );
  }
}
