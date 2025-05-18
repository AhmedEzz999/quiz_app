import 'package:flutter/material.dart';
import 'package:quiz_app/theme/app_colors.dart';

class NextButton extends StatelessWidget {
  final VoidCallback onPressed;
  const NextButton({super.key, required this.onPressed});

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
      child: const Row(
        children: [
          Text(
            'Next',
            style: TextStyle(fontSize: 25, color: AppColors.unselectedColor),
          ),
          SizedBox(width: 15),
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 25,
            color: AppColors.unselectedColor,
          ),
        ],
      ),
    );
  }
}
