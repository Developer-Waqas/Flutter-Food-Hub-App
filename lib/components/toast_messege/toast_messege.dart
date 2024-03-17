import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';

class ToastMessages {
  void toastMessages(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: white,
      fontSize: 16
    );
  }
}
