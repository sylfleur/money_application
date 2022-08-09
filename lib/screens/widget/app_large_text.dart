import 'package:flutter/material.dart';
import 'package:money_application/misc/colors.dart';

class AppLargeText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const AppLargeText({
    Key? key,
    required this.text,
    this.color = AppColors.bigTitleColorsblue,
    this.size = 30.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
