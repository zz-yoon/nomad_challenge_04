import 'package:flutter/material.dart';
import 'package:nomad_challenge_04/screens/lecture/bottom_navigationbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigationbarScreen(),
    );
  }
}
