import 'package:flutter/material.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';

class MyButtons extends StatelessWidget {
  double height;
  double width;
  Color color;
  BorderRadiusGeometry? borderRadius;
  String text;

  MyButtons({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'SofiaRegular',
            color: splashColor,
            fontSize: 14
          ),
        ),
      ),
    );
  }
}
