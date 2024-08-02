import 'package:flutter/material.dart';
import 'package:quizmakertraining/Quiz.dart';

class Startscreen extends StatelessWidget {
  const Startscreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.purple.shade900],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Opacity(
              opacity: 0.5,
              child: Image.asset(
                "assets/quiz-logo.png",
                width: 300,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Learn flutter the fun way !",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),

              icon: const Icon(
                Icons.accessibility_new_rounded,
                color: Colors.yellowAccent,
                size: 30,
              ),
              label: const Text(
                "Start Quiz",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              //style: ButtonStyle(backgroundColor:)),
            )
          ],
        ),
      ),
    );
  }
}
