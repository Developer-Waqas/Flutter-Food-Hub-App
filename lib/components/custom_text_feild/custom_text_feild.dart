import 'package:flutter/material.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  Widget? suffixIcon;
  Widget? prefixIcon;
  Color? fillColor;
  bool obscureText;
  TextEditingController? controller;
  String? Function(String?)? validator;
  TextInputType? keyboardType;

  CustomTextField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.fillColor,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardType,
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
      obscureText: obscureText,
      controller: controller,
      validator: validator,
    );
  }
}
