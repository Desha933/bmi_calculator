import 'package:bmi/view/widgets/custom_app_bar.dart';
import 'package:bmi/view/widgets/custom_gender_card.dart';
import 'package:flutter/material.dart';

class BmiView extends StatelessWidget {
  const BmiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0E21),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: CustomGenderCard(icon: Icons.male, text: 'MALE'),
                      ),
                      SizedBox(width: 24),
                      Expanded(
                        child: CustomGenderCard(
                          icon: Icons.female,
                          text: 'FEMALE',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
