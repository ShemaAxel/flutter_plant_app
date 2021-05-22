import 'package:flutter/material.dart';
import 'package:plant_linkedin/welcome_screen/welcome_screen.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: WelcomeScreen(),
        ),
      ),
    );
  }
}
