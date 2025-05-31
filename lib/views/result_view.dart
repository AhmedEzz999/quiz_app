import 'package:flutter/material.dart';
import 'package:quiz_app/constants/questions_list.dart';

class ResultView extends StatelessWidget {
  final int totalScore;
  const ResultView({super.key, required this.totalScore});

  @override
  Widget build(BuildContext context) {
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 10,
                        children: [
                          Icon(
                            questionList[index].answeredRight!
                                ? Icons.check_circle
                                : Icons.cancel,
                            color:
                                questionList[index].answeredRight!
                                    ? Colors.green
                                    : Colors.red,
                            size: 24,
                          ),
                          Expanded(
                            child: FittedBox(
                              alignment: Alignment.topLeft,
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'Your Answer: ${questionList[index].userAnswers.join(', ')}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF929BAC),
                                ),
                              ),
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
