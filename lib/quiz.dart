import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function answerquestion;
  final List question;
  Quiz(
      {super.key,
      required this.questionIndex,
      required this.question,
      required this.answerquestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]["question"]),
        ...(question[questionIndex]["answer"] as
         List<Map<String,Object>>)
        .map((answer) {
          return Answerr(
              answer['text']as String, () => answerquestion(answer["scroll"]));
        }).toList(),
      ],
    );
  }
}
