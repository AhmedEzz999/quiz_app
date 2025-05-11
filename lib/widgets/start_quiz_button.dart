import 'package:flutter/material.dart';
import 'package:quiz_app/views/questions_view.dart';

class StartQuizButton extends StatelessWidget {
  const StartQuizButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => QuestionsView()),
        );
      },
      child: Container(
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.symmetric(vertical: 35),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text('Start Quiz', style: TextStyle(fontSize: 27)),
        ),
      ),
    );
  }
}
