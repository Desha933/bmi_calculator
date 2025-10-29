import 'package:bmi/view/widgets/custom_gender_card.dart';
import 'package:flutter/material.dart';

class GenderSection extends StatefulWidget {
  const GenderSection({super.key});

  @override
  State<GenderSection> createState() => _GenderSectionState();
}

class _GenderSectionState extends State<GenderSection> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomGenderCard(
            onTap: () {
              setState(() {
                isSelected = true;
              });
              isSelected = false;
            },
            icon: Icons.male,
            text: 'MALE',
            isActive: isSelected,
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          child: CustomGenderCard(
            onTap: () {
              setState(() {
                isSelected = true;
              });
            },
            icon: Icons.female,
            text: 'FEMALE',
            isActive: !isSelected,
          ),
        ),
      ],
    );
  }
}
