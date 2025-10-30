import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({super.key, required this.icon, this.onTap});
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xff4b4e5f),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(icon, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
