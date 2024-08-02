import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizmakertraining/data/questions.dart';
import 'package:quizmakertraining/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> get SummaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = SummaryData;

    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
        width: double.infinity,
        child: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    style: GoogleFonts.aboreto(
                        fontSize: 30,
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.bold),
                    'you answered $numCorrectQuestions Question out of $numTotalQuestions correctly'),
                const SizedBox(
                  height: 30,
                ),
                QuestionsSummary(summaryData),
                const SizedBox(
                  height: 30,
                ),
               //TextButton(onPressed: () {}, child: const Text('Restart'))
              ],
            )));
  }
}
