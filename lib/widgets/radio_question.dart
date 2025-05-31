import 'package:flutter/material.dart';
import 'package:quiz_app/constants/questions_list.dart';
import 'package:quiz_app/models/question_manager.dart';
import 'package:quiz_app/theme/app_colors.dart';

class RadioQuestion extends StatefulWidget {
  final int questionNumber;
  const RadioQuestion({super.key, required this.questionNumber});

  @override
  State<RadioQuestion> createState() => _RadioQuestionState();
}

class _RadioQuestionState extends State<RadioQuestion> {
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    if (questionList[widget.questionNumber].userAnswers.isNotEmpty) {
      _selectedValue = questionList[widget.questionNumber].userAnswers.first;
    }
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
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: RadioListTile<String>(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  tileColor:
                      _selectedValue == choice
                          ? AppColors.selectedColor
                          : AppColors.unselectedColor,
                  title: Text(choice, style: const TextStyle(fontSize: 20)),
                  value: choice,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value;
                      QuestionManager.selectAnswerInRadioQuestion(
                        choice: value!,
                        questionNumber: widget.questionNumber,
                      );
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
