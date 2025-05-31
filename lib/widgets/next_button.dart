import 'package:flutter/material.dart';
import 'package:quiz_app/constants/questions_list.dart';
import 'package:quiz_app/theme/app_colors.dart';

class NextButton extends StatelessWidget {
  final int questionNumber;
  final VoidCallback onPressed;
  const NextButton({
    super.key,
    required this.onPressed,
    required this.questionNumber,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        backgroundColor: AppColors.nextButtonColor,
        elevation: 0,
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Text(
            questionNumber + 1 < questionList.length ? 'Next' : 'Finish',
            style: const TextStyle(
              fontSize: 25,
              color: AppColors.unselectedColor,
            ),
          ),
          const SizedBox(width: 15),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 25,
            color: AppColors.unselectedColor,
          ),
        ],
      ),
    );
  }
}
