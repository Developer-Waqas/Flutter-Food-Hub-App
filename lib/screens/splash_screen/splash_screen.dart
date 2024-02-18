import 'dart:async';
import 'package:flutter/material.dart';
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


    ///page routing condition=================================
    if(isSignUp){
      Timer(const Duration(seconds: 3), () {
        // Navigator.pushNamedAndRemoveUntil(context, RoutesName.mainScreen, (route) => false);
      });
    } else if(isLogin){
      Timer(const Duration(seconds: 3), ()
      {
        // Navigator.pushNamedAndRemoveUntil(
        //     context, RoutesName.mainScreen, (route) => false);
      });
    }
    else {
      Timer(const Duration(seconds: 3), () {
        // Navigator.pushNamedAndRemoveUntil(context, RoutesName.signInScreen, (route) => false);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/logo.png'),),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10,),
            Center(
              child: Row(
                children: [
                  Text('Food',style: headingStyle1,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

