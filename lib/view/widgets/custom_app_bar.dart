import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('BMI CALCULATOR'),
      backgroundColor: Color(0xff111111),
    );
  }
}
