import 'package:flutter/material.dart';
import 'package:quizmakertraining/Mywidgets/answerWidgets.dart';
import 'package:quizmakertraining/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var Qnum = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      Qnum = Qnum + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[Qnum];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              currentquestion.text,
              style: const TextStyle(fontSize: 25, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            ...currentquestion.getshuffled().map((item) {
              return AnswerButton(item,(){
                answerQuestion(item);
              }
              );
            }),
            /*AnswerButton(currentquestion.answers[0], () {}),
            const SizedBox(
              height: 20,
            ),
            AnswerButton(currentquestion.answers[1], () {}),
            const SizedBox(
              height: 20,
            ),
            AnswerButton(currentquestion.answers[2], () {}),
            const SizedBox(
              height: 20,
            ),
            AnswerButton(currentquestion.answers[3], () {}),*/
          ],
        ),
      ),
    );
  }
}
