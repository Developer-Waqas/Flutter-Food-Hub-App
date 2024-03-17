import 'package:flutter/material.dart';
import 'package:food_hub_app/components/custom_button/custom_button.dart';
import 'package:food_hub_app/utilities/routes_name/routes_name.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/app_colors/app_color.dart';
import '../../constants/app_styles/app_style.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
                      onTap: (){},
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
                    "Or Login with",
                    style: TextStyle(
                      fontSize: 18,
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
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 53,
                      width: 65.27,
                      decoration: BoxDecoration(
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: black.withOpacity(0.4),
                            blurRadius: 6,
                            offset: Offset(0, 4),
                          )
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            scale: 3,
                            image: AssetImage('assets/images/img_fb_logo.png')),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 53,
                      width: 65.27,
                      decoration: BoxDecoration(
                        color: white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: black.withOpacity(0.4),
                            blurRadius: 6,
                            offset: Offset(0, 4),
                          )
                        ],
                        image: const DecorationImage(
                            scale: 3,
                            image:
                            AssetImage('assets/images/img_google_logo.png')),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 53,
                      width: 65.27,
                      decoration: BoxDecoration(
                        color: white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: black.withOpacity(0.4),
                            blurRadius: 6,
                            offset: Offset(0, 4),
                          )
                        ],
                        image: const DecorationImage(
                            scale: 15,
                            image:
                            AssetImage('assets/images/img_apple_logo.png')),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 53,
                      width: 65.27,
                      decoration: BoxDecoration(
                        color: white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: black.withOpacity(0.4),
                            blurRadius: 6,
                            offset: Offset(0, 4),
                          )
                        ],
                        image: const DecorationImage(
                            scale: 13,
                            image: AssetImage('assets/images/img_x_logo.png')),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: MyButtons(
                  onTap: (){
                    Navigator.pushNamedAndRemoveUntil(context, RoutesName.signupScreen, (route) => false);
                  },
                  width: 325,
                  height: 54,
                  color: black12,
                  text: 'Start with E-mail or Phone Number',
                  style: TextStyle(
                    fontFamily: 'SofiaMedium',
                    color: milky,
                    fontSize: 17,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: white, width: 1),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    "Already have an Account?",
                    style: TextStyle(
                      fontFamily: 'SofiaRegular',
                      fontSize: 16,
                      color: black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context, RoutesName.loginScreen, (route) => false);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'SofiaMedium',
                        fontSize: 17,
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
