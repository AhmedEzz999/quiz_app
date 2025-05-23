import 'package:flutter/material.dart';
import 'package:quiz_app/theme/app_colors.dart';

class ButtonBack extends StatelessWidget {
  final VoidCallback onPressed;
  const ButtonBack({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        backgroundColor: Colors.transparent,
        elevation: 0,
        side: const BorderSide(color: AppColors.secondaryColor, width: 2.0),
      ),
      onPressed: onPressed,
      child: const Row(
        children: [
          Icon(
            Icons.arrow_back_ios_new,
            size: 25,
            color: AppColors.unselectedColor,
          ),
          SizedBox(width: 15),
          Text(
            'Back',
            style: TextStyle(fontSize: 25, color: AppColors.unselectedColor),
          ),
        ],
      ),
    );
  }
}
