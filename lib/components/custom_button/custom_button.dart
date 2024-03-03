import 'package:flutter/material.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';

class MyButtons extends StatelessWidget {
  double height;
  double width;
  Color color;
  BorderRadiusGeometry? borderRadius;
  String text;
  TextStyle? style;
  BoxBorder? border;

  MyButtons({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius,
    required this.color,
    required this.text,
    this.style,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
          border: border,
        ),
        child: Center(
          child: Text(
            text,
            style: style,
            ),
          ),
        ),
    );
  }
}
