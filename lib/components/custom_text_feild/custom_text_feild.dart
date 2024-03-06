import 'package:flutter/material.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  Color? fillColor;

  CustomTextField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
          fontFamily: 'SofiaRegular', color: Color(0xff9796A1)),
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: fillColor,
        hintStyle: const TextStyle(
            fontFamily: 'SofiaRegular', color: Color(0xff9796A1)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: splashColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: splashColor,
          ),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
