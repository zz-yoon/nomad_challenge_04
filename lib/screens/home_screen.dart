import 'package:flutter/material.dart';
import 'package:nomad_challenge_04/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(
        horizontal: Sizes.size10,
        vertical: Sizes.size20,
      )),
    );
  }
}
