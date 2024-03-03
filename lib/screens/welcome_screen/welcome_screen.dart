import 'package:flutter/material.dart';
import 'package:food_hub_app/components/custom_button/custom_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/app_colors/app_color.dart';
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
        decoration: const BoxDecoration(
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
              const SizedBox(
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
                      borderRadius: BorderRadius.circular(27.41),
                      text: 'skip',
                      style: TextStyle(
                        fontFamily: 'SofiaRegular',
                        color: splashColor,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
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
                    'Your favourite foods delivered\nfast at your door.',
                    style: headingStyle4,
                  ),
                ],
              ),
              const SizedBox(
                height: 200,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: grey,
                      thickness: 2,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sign in with",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SofiaMedium',
                      color: black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 53,
                    width: 65.27,
                    decoration: BoxDecoration(
                      color: white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          scale: 3,
                          image: AssetImage('assets/images/img_fb_logo.png')),
                    ),
                  ),
                  Container(
                    height: 53,
                    width: 65.27,
                    decoration: BoxDecoration(
                      color: white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          scale: 3,
                          image:
                              AssetImage('assets/images/img_google_logo.png')),
                    ),
                  ),
                  Container(
                    height: 53,
                    width: 65.27,
                    decoration: BoxDecoration(
                      color: white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          scale: 3,
                          image:
                              AssetImage('assets/images/img_apple_logo.png')),
                    ),
                  ),
                  Container(
                    height: 53,
                    width: 65.27,
                    decoration: BoxDecoration(
                      color: white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          scale: 4,
                          image: AssetImage('assets/images/img_x_logo.png')),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: MyButtons(
                  width: 312,
                  height: 54,
                  color: black12,
                  text: 'Start with email or phone number',
                  style: TextStyle(
                    fontFamily: 'SofiaMedium',
                    color: milky,
                    fontSize: 17,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: white, width: 1),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account?",
                    style: TextStyle(
                      fontFamily: 'SofiaMedium',
                      fontSize: 16,
                      color: black,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'SofiaMedium',
                        fontSize: 16,
                        color: splashColor,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
