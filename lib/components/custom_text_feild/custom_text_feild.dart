import 'package:flutter/material.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  Widget? suffixIcon;

  CustomTextField({
    super.key,
    this.hintText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
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

      ),
    );
  }
}
