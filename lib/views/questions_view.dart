import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/constants/app_images.dart';
import 'package:quiz_app/models/questions_list.dart';
import 'package:quiz_app/theme/app_colors.dart';
import 'package:quiz_app/views/home_view.dart';
import 'package:quiz_app/views/result_view.dart';
import 'package:quiz_app/widgets/back_button.dart';
import 'package:quiz_app/widgets/next_button.dart';
import 'package:quiz_app/widgets/question_item.dart';

class QuestionsView extends StatefulWidget {
  const QuestionsView({super.key});

  @override
  State<QuestionsView> createState() => _QuestionsViewState();
}

class _QuestionsViewState extends State<QuestionsView> {
  int questionNumber = 0;
  final int totalQuestions = questionList.length;
  late List<String> userAnswers;
  late List<String> correctAnswers;
  final List<bool> totalAnswers = [];

  @override
  void initState() {
    super.initState();
    _updateCurrentQuestionData();
  }

  void _updateCurrentQuestionData() {
    userAnswers = questionList[questionNumber].userAnswers;
    correctAnswers = questionList[questionNumber].correctAnswers;
  }

  void _goToNextQuestion() {
    if (questionNumber < totalQuestions - 1) {
      final List<bool> isCorrectList =
          correctAnswers.map((answer) => userAnswers.contains(answer)).toList();
      final bool isCorrect = isCorrectList.every((answer) => answer == true);
      totalAnswers.add(isCorrect);
      setState(() {
        questionNumber++;
        _updateCurrentQuestionData();
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultView(answers: totalAnswers),
        ),
      );
    }
  }

  void _goToPreviousQuestion() {
    questionList[questionNumber].userAnswers.clear();
    if (questionNumber > 0) {
      setState(() {
        questionNumber--;
        _updateCurrentQuestionData();
        totalAnswers.removeLast();
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
                    NextButton(onPressed: _goToNextQuestion),
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
