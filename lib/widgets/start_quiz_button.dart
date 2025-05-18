import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_list.dart';
import 'package:quiz_app/views/questions_view.dart';

class StartQuizButton extends StatelessWidget {
  const StartQuizButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        for (var question in questionList) {
          question.userAnswers.clear();
        }
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const QuestionsView()),
        );
      },
      child: Container(
        width: double.infinity,
        height: 60,
        margin: const EdgeInsets.symmetric(vertical: 35),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text('Start Quiz', style: TextStyle(fontSize: 27)),
        ),
      ),
    );
  }
}
