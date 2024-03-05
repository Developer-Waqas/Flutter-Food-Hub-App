import 'package:flutter/material.dart';
import 'package:food_hub_app/screens/home_screen/home_screen.dart';
import 'package:food_hub_app/screens/login_screen/login_screen.dart';
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
        return MaterialPageRoute(builder: (context) => WelcomeScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) =>  HomeScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case RoutesName.signupScreen:
        return MaterialPageRoute(builder: (context) => SignUpScreen());
    }
    return MaterialPageRoute(builder: (context) => const Scaffold(
      body: Center(
        child: Text('Errors'),
      ),
    ));
  }
}