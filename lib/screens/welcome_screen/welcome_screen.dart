import 'package:flutter/material.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  welcome() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setBool('welcome', true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/img_wlcme_bg.png'),
          ),
          ),
        ),
    );
  }
}
