import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_hub_app/utilities/routes_name/routes_name.dart';

class SplashServices {
  void isLogin(BuildContext context){

    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

    if(user != null) {
      Timer(Duration(seconds: 3), () {
        Navigator.pushNamedAndRemoveUntil(context, RoutesName.mainScreen, (route) => false);
      });
    }
    else{
      Timer(Duration(seconds: 3), () {
        Navigator.pushNamedAndRemoveUntil(context, RoutesName.welcomeScreen, (route) => false);
      });
    }

  }
}