import 'package:flutter/material.dart';

class HeightSection extends StatefulWidget {
  const HeightSection({super.key});

  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  double height = 0;
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Text(
                  'HEIGHT',
                  style: TextStyle(fontSize: 18, color: Color(0xff898b9b)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      '${height.round()}',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text('cm', style: TextStyle(color: Color(0xff898b9b))),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(activeTrackColor: Colors.red),
                  child: Slider(
                    min: 0,
                    max: 200,
                    value: height,
                    onChanged: (value) {
                      height = value;
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
