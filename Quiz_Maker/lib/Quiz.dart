import 'package:flutter/material.dart';
import 'package:quizmakertraining/data/questions.dart';
import 'package:quizmakertraining/questionsscreen.dart';
import 'package:quizmakertraining/startscreen.dart';
import 'package:quizmakertraining/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activescreen = 'startscreen';

  List<String> selectedAnswers = [];

  @override
  void switchScreen() {
    setState(() {
      activescreen = 'questionsscreen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {

        activescreen = 'results_screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = Startscreen(switchScreen);
    if (activescreen == 'questionsscreen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }
    if (activescreen == 'results_screen') {
      screenWidget =  ResultsScreen(chosenAnswers:selectedAnswers,);
    }
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purple.shade900],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: screenWidget
          ),
        ));
  }
}
/*
activescreen == 'startscreen'
? Startscreen(switchScreen)
    : QuestionsScreen(
onSelectAnswer: chooseAnswer,
),*/
