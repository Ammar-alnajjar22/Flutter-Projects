import 'package:flutter/material.dart';
import 'package:quizmakertraining/Quiz.dart';
import 'package:quizmakertraining/startscreen.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        body:Quiz(),
      ),
    );
  }
}
