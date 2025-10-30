import 'package:flutter/material.dart';

class CustomGenderCard extends StatelessWidget {
  const CustomGenderCard({
    super.key,
    required this.icon,
    required this.text,
    required this.isActive,
    this.onTap,
  });
  final IconData icon;
  final String text;
  final bool isActive;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isActive ? Color(0xff17172f) : Color(0xff090b24),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.white),
            Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: isActive ? Color(0xff8d8c9d) : Color(0xff777a8a),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
