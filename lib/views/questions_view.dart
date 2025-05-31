import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/constants/app_images.dart';
import 'package:quiz_app/constants/questions_list.dart';
import 'package:quiz_app/models/question_manager.dart';
import 'package:quiz_app/theme/app_colors.dart';
import 'package:quiz_app/views/home_view.dart';
import 'package:quiz_app/views/result_view.dart';
import 'package:quiz_app/widgets/back_button.dart';
import 'package:quiz_app/widgets/next_button.dart';
import 'package:quiz_app/widgets/question_item.dart';
import 'package:quiz_app/widgets/show_dialog.dart';

class QuestionsView extends StatefulWidget {
  const QuestionsView({super.key});

  @override
  State<QuestionsView> createState() => _QuestionsViewState();
}

class _QuestionsViewState extends State<QuestionsView> {
  int questionNumber = 0;
  int totalScore = 0;
  final int totalQuestions = questionList.length;

  void _goToNextQuestion() {
    if (questionList[questionNumber].userAnswers.isNotEmpty) {
      if (questionNumber + 1 < totalQuestions) {
        QuestionManager.checkAnswer(questionNumber: questionNumber);
        questionList[questionNumber].answeredRight! ? totalScore++ : totalScore;
        setState(() {
          questionNumber++;
        });
      } else {
        QuestionManager.checkAnswer(questionNumber: questionNumber);
        questionList[questionNumber].answeredRight! ? totalScore++ : totalScore;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ResultView(totalScore: totalScore),
          ),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) => const ShowDialog(),
      );
    }
  }

  void _goToPreviousQuestion() {
    if (questionNumber > 0) {
      questionList[questionNumber - 1].answeredRight!
          ? totalScore--
          : totalScore;
      setState(() {
        questionNumber--;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    int imageIndex = (questionNumber % 4) + 1;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          const Image(image: AssetImage(AppImages.gradient)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 55,
                  margin: const EdgeInsets.only(top: 80, bottom: 30),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        AppImages.question(imageIndex),
                        width: 22,
                      ),
                      const SizedBox(width: 15),
                      Text(
                        'Question ${questionNumber + 1}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                QuestionItem(
                  key: ValueKey(questionNumber),
                  questionNumber: questionNumber,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonBack(onPressed: _goToPreviousQuestion),
                    NextButton(
                      onPressed: _goToNextQuestion,
                      questionNumber: questionNumber,
                    ),
                  ],
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
