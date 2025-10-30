import 'package:bmi/view/widgets/circle_icon.dart';
import 'package:bmi/view/widgets/custom_back_ground_container.dart';
import 'package:flutter/material.dart';

class CustomWeightCard extends StatefulWidget {
  const CustomWeightCard({super.key});

  @override
  State<CustomWeightCard> createState() => _CustomWeightCardState();
}

class _CustomWeightCardState extends State<CustomWeightCard> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      text: 'WEIGHT',
      value: value,
      children: [
        CircleIcon(
          icon: Icons.remove,
          onTap: () {
            setState(() {
              value--;
            });
          },
        ),
        CircleIcon(
          icon: Icons.add,
          onTap: () {
            setState(() {
              value++;
            });
          },
        ),
      ],
    );
  }
}
