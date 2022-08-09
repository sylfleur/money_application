import 'package:flutter/material.dart';
import 'package:money_application/misc/colors.dart';

class AppText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const AppText({
    Key? key,
    required this.text,
    this.color = AppColors.titleColorsPurple,
    this.size = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
