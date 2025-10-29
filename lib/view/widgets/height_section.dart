import 'package:flutter/material.dart';

class HeightSection extends StatelessWidget {
  const HeightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff17172f),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Text('HEIGHT', style: TextStyle(color: Color(0xff898b9b))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '174',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text('cm', style: TextStyle(color: Color(0xff898b9b))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
