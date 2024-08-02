import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quizmakertraining/data/questions.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: TextStyle(
                      fontSize: 30,
                      color: data['correct_answer'] == data['user_answer']
                          ? Colors.green
                          : Colors.red),
                  textAlign: TextAlign.center,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String,style:TextStyle(fontSize:20,color:Colors.yellowAccent ),textAlign: TextAlign.center,),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(data['user_answer'] as String,
                        style: TextStyle(
                            fontSize: 15,
                            color: data['correct_answer'] == data['user_answer']
                                ? Colors.green
                                : Colors.red),),
                      Text(data['correct_answer'] as String,
                      style:TextStyle(color:Colors.green),),
                      Divider(),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
