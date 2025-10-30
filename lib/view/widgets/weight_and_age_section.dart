import 'package:bmi/view/widgets/custom_age_card.dart';
import 'package:bmi/view/widgets/custom_weight_card.dart';
import 'package:flutter/material.dart';

class WeightAndAgeSection extends StatelessWidget {
  const WeightAndAgeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomWeightCard()),
        SizedBox(width: 24),
        Expanded(child: CustomAgeCard()),
      ],
    );
  }
}
