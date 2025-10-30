import 'package:bmi/view/widgets/circle_icon.dart';
import 'package:bmi/view/widgets/custom_back_ground_container.dart';
import 'package:flutter/material.dart';

class CustomAgeCard extends StatefulWidget {
  const CustomAgeCard({super.key});

  @override
  State<CustomAgeCard> createState() => _CustomAgeCardState();
}

class _CustomAgeCardState extends State<CustomAgeCard> {
  double age = 0;
  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      text: 'Age',
      value: age,
      children: [
        CircleIcon(
          icon: Icons.remove,
          onTap: () {
            setState(() {
              age--;
            });
          },
        ),
        CircleIcon(
          icon: Icons.add,
          onTap: () {
            setState(() {
              age++;
            });
          },
        ),
      ],
    );
  }
}
