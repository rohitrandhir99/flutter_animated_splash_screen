import 'dart:async';
import 'package:flutter/material.dart';
// imports
import 'package:animated_splash_screen/screens/home.dart';
import 'package:animated_splash_screen/components/fading_icon_anime.dart';
import 'package:animated_splash_screen/components/animated_text.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // To navigate to HomeScreen after 3 sec's
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen(),
        ),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 55, 151, 241),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadingAnimation(),
              const SizedBox(height: 40),
              const AnimatedText(),
            ],
          ),
        ),
      ),
    );
  }
}
