import 'package:flutter/material.dart';
import 'package:food_hub_app/screens/burger_screen/burger_detail_screens/zinger_burger_detail_screen.dart';
import 'package:food_hub_app/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:food_hub_app/screens/login_screen/login_screen.dart';
import 'package:food_hub_app/screens/main_screen/main_screen.dart';
import 'package:food_hub_app/screens/phone_no_screen/reg_phone_no_screen.dart';
import 'package:food_hub_app/screens/profile_screen/profile_screen.dart';
import 'package:food_hub_app/screens/signup_screen/signup_screen.dart';
import 'package:food_hub_app/screens/splash_screen/splash_screen.dart';
import 'package:food_hub_app/screens/welcome_screen/welcome_screen.dart';
import 'package:food_hub_app/utilities/routes_name/routes_name.dart';

class RoutesPaths {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RoutesName.welcomeScreen:
        return MaterialPageRoute(builder: (context) => const WelcomeScreen());
      case RoutesName.mainScreen:
        return MaterialPageRoute(builder: (context) => MainScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RoutesName.signupScreen:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      case RoutesName.forgotPassword:
        return MaterialPageRoute(builder: (context) => ForgotPassword());
      case RoutesName.phoneNoScreen:
        return MaterialPageRoute(builder: (context) => PhoneNumberScreen());
      case RoutesName.zingerBurgerDetailScreen:
        return MaterialPageRoute(builder: (context) => ZingerBurgerDetailScreen());
      case RoutesName.profileScreen :
        return MaterialPageRoute(builder: (context) => ProfileScreen());
    }
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text('Errors'),
        ),
      ),
    );
  }
}
