import 'package:quiz_app/constants/questions_list.dart';

abstract class QuestionManager {
  static void selectAnswerInRadioQuestion({
    required int questionNumber,
    required String choice,
  }) {
    final List<String> userAnswers = questionList[questionNumber].userAnswers;
    if (userAnswers.isNotEmpty) {
      userAnswers.removeLast();
      userAnswers.add(choice);
    } else {
      userAnswers.add(choice);
    }
  }

  static void addAnswerInCheckedQuestion({
    required int questionNumber,
    required int choiceIndex,
  }) {
    final List<String> userAnswers = questionList[questionNumber].userAnswers;
    final List<String> choices = questionList[questionNumber].choices;
    userAnswers.add(choices[choiceIndex]);
  }

  static void removeAnswerInCheckedQuestion({
    required int questionNumber,
    required int choiceIndex,
  }) {
    final List<String> userAnswers = questionList[questionNumber].userAnswers;
    final List<String> choices = questionList[questionNumber].choices;
    userAnswers.remove(choices[choiceIndex]);
  }

  static void checkAnswer({required int questionNumber}) {
    final List<String> userAnswers = questionList[questionNumber].userAnswers;
    final List<String> correctAnswers =
        questionList[questionNumber].correctAnswers;
    if (userAnswers.length == correctAnswers.length) {
      final bool isRight = correctAnswers.every(
        (answer) => userAnswers.contains(answer),
      );
      questionList[questionNumber].answeredRight = isRight;
    } else {
      questionList[questionNumber].answeredRight = false;
    }
  }
}
