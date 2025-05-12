import 'package:flutter/material.dart';
import 'package:quiz_app/theme/app_colors.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        backgroundColor: AppColors.nextButtonColor,
        elevation: 0,
      ),
      onPressed: () {},
      child: Row(
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
