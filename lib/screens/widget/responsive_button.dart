import 'package:flutter/material.dart';
import 'package:money_application/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final bool? isResponsive;
  final double? width;
  const ResponsiveButton(
      {Key? key,
      this.width,
      this.isResponsive = false,
      required this.text,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: const LinearGradient(
          colors: [
            AppColors.buttonBgColor1,
            AppColors.buttonBgColor2,
          ],
        ),
        image: const DecorationImage(
          alignment: Alignment.topRight,
          image: AssetImage('assets/images/button/button_mask.png'),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          Icon(icon, color: Colors.white,),
        ],
      ),
    );
  }
}
