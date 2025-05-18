class QuestionModel {
  final String question;
  final List<String> choices;
  final List<String> correctAnswers;
  final List<String> userAnswers = [];
  final bool isRadio;

  QuestionModel({
    required this.question,
    required this.choices,
    required this.correctAnswers,
    required this.isRadio,
  });
}
