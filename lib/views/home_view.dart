import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_images.dart';
import 'package:quiz_app/theme/app_colors.dart';
import 'package:quiz_app/widgets/start_quiz_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Image(image: AssetImage(AppImages.gradient)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Text(
                    'Good morning,',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Text(
                    'New topic is waiting',
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                  Spacer(),
                  StartQuizButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
