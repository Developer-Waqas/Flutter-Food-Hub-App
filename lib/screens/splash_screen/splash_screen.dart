import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';
import 'package:food_hub_app/constants/app_styles/app_style.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utilities/routes_name/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  ///init state function==============
  void initState() {
    super.initState();

    isSignUp();
  }

  ///data loading function===========================
  void isSignUp() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    bool isSignUp = sp.getBool('isSignUp') ?? false;
    bool isLogin = sp.getBool('isLogin') ?? false;

    ///page routing conditions=================================
    if (isSignUp == true || isLogin == true) {
      Timer(const Duration(seconds: 3), () {
        Navigator.pushNamedAndRemoveUntil(context, RoutesName.homeScreen, (route) => false);
      });
    } else {
      Timer(const Duration(seconds: 3), () {
        Navigator.pushNamedAndRemoveUntil(context, RoutesName.welcomeScreen, (route) => false);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 92,
              width: 92,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(24),
                image: const DecorationImage(
                  image: AssetImage('assets/images/img_logo.png'),
                  scale: 3,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('FOOD',style: headingStyle1,),
              const SizedBox(width: 5,),
              Text('HUB',style: headingStyle2,),
            ],
          ),
        ],
      ),
    );
  }
}
