import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_list.dart';
import 'package:quiz_app/theme/app_colors.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        title: Text('The Result', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 54, 94, 109),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: ListView.builder(
            itemCount: questionList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 15, right: 15),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Question ${index + 1}: ${questionList[index].question}',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Your Answer: ${questionList[index].userAnswers.join(', ')}',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Correct Answer: ${questionList[index].answers}',
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 255, 245, 106),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
