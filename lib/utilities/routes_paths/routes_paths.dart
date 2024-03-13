import 'package:flutter/material.dart';
import 'package:food_hub_app/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:food_hub_app/screens/home_screen/home_screen.dart';
import 'package:food_hub_app/screens/login_screen/login_screen.dart';
import 'package:food_hub_app/screens/main_screen/main_screen.dart';
import 'package:food_hub_app/screens/pin_code_screen/pin_code_screen.dart';
import 'package:food_hub_app/screens/reset_password_screen/reset_password_screen.dart';
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
        return MaterialPageRoute(builder: (context) =>  MainScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RoutesName.signupScreen:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      case RoutesName.forgotPassword:
        return MaterialPageRoute(builder: (context) => ForgotPassword());
      case RoutesName.pinCodeScreen:
        return MaterialPageRoute(builder: (context) => PinCodeScreen());
      case RoutesName.resetPassword:
        return MaterialPageRoute(builder: (context) => ResetPassword());
    }
    return MaterialPageRoute(builder: (context) => const Scaffold(
      body: Center(
        child: Text('Errors'),
      ),
    ));
  }
}