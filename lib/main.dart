import 'package:flutter/material.dart';
// imports
import 'package:animated_splash_screen/screens/splash.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}