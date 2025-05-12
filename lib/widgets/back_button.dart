import 'package:flutter/material.dart';
import 'package:quiz_app/theme/app_colors.dart';

class ButtonBack extends StatelessWidget {
  const ButtonBack({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        backgroundColor: Colors.transparent,
        elevation: 0,
        side: BorderSide(color: AppColors.secondaryColor, width: 2.0),
      ),
      onPressed: () {},
      child: Row(
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
