import 'package:bmi/view/widgets/circle_icon.dart';
import 'package:flutter/material.dart';

class CustomBackGroundContainer extends StatelessWidget {
  const CustomBackGroundContainer({
    super.key,
    required this.text,
    required this.value,
    required this.children,
  });
  final String text;
  final double value;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff17172f),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              '$text',
              style: TextStyle(fontSize: 18, color: Color(0xff818392)),
            ),
            Text(
              '${value.round()}',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: children,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
