import 'package:bmi/view/widgets/custom_app_bar.dart';
import 'package:bmi/view/widgets/gender_section.dart';
import 'package:bmi/view/widgets/height_section.dart';
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
                  GenderSection(),
                  SizedBox(height: 24),
                  HeightSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
