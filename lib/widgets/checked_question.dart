import 'package:flutter/material.dart';
import 'package:quiz_app/constants/questions_list.dart';
import 'package:quiz_app/models/question_manager.dart';
import 'package:quiz_app/theme/app_colors.dart';

class CheckedQuestion extends StatefulWidget {
  final int questionNumber;
  const CheckedQuestion({super.key, required this.questionNumber});

  @override
  State<CheckedQuestion> createState() => _CheckedQuestionState();
}

class _CheckedQuestionState extends State<CheckedQuestion> {
  List<bool> _selectedValues = [];

  @override
  void initState() {
    super.initState();
    final List<String> choices = questionList[widget.questionNumber].choices;
    final List<String> userAnswers = questionList[widget.questionNumber].userAnswers;

    _selectedValues = List<bool>.generate(
      choices.length,
      (index) => userAnswers.contains(choices[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    String question = questionList[widget.questionNumber].question;
    int choicesNumber = questionList[widget.questionNumber].choices.length;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: const TextStyle(
            color: AppColors.unselectedColor,
            fontSize: 33,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: choicesNumber,
          itemBuilder: (context, index) {
            String choice = questionList[widget.questionNumber].choices[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:
                      _selectedValues[index]
                          ? AppColors.selectedColor
                          : AppColors.unselectedColor,
                ),
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: const EdgeInsets.all(8),
                  title: Text(choice, style: const TextStyle(fontSize: 20)),
                  value: _selectedValues[index],
                  onChanged: (value) {
                    setState(() {
                      _selectedValues[index] = value!;
                      if (value) {
                        QuestionManager.addAnswerInCheckedQuestion(
                          questionNumber: widget.questionNumber,
                          choiceIndex: index,
                        );
                      } else {
                        QuestionManager.removeAnswerInCheckedQuestion(
                          questionNumber: widget.questionNumber,
                          choiceIndex: index,
                        );
                      }
                    });
                  },
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
