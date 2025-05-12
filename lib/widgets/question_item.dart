import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_list.dart';
import 'package:quiz_app/widgets/checked_question.dart';
import 'package:quiz_app/widgets/radio_question.dart';

class QuestionItem extends StatelessWidget {
  final int questionNumber;
  const QuestionItem({super.key, required this.questionNumber});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
          questionList[questionNumber].isRadio
              ? RadioQuestion(questionNumber: questionNumber)
              : CheckedQuestion(questionNumber: questionNumber),
    );
  }
}
