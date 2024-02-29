import 'package:flutter/material.dart';
import 'package:food_hub_app/components/custom_button/custom_button.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/app_styles/app_style.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyButtons(
                      width: 55,
                      height: 32,
                      color: white,
                      text: 'skip',
                      borderRadius: BorderRadius.circular(27.41),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to',
                    style: headingStyle3,
                  ),
                  Text(
                    'FoodHub',
                    style: headingStyle3a,
                  ),
                  Text(
                    'Your favourite foods delivered\n fast at your door.',
                    style: headingStyle4,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
