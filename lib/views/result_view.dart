import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_list.dart';

class ResultView extends StatelessWidget {
  final List<bool> answers;
  const ResultView({super.key, required this.answers});

  @override
  Widget build(BuildContext context) {
    final int totalScore = answers.where((answer) => answer == true).length;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your score is $totalScore/${questionList.length}',
          style: const TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 41, 51, 68),
      ),
      backgroundColor: const Color(0xFF1E2532),
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
                    color: const Color(0xFF252E40),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Question ${index + 1}: ${questionList[index].question}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            answers[index] ? Icons.check_circle : Icons.cancel,
                            color: answers[index] ? Colors.green : Colors.red,
                            size: 24,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Your Answer: ${questionList[index].userAnswers.join(', ')}',
                            style: const TextStyle(
                              fontSize: 20,
                              color: Color(0xFF929BAC),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Correct Answer: ${questionList[index].correctAnswers.join(', ')}',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Color(0xFFABDB9D),
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
