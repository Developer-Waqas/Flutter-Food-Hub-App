import 'package:flutter/material.dart';
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
    }
    return MaterialPageRoute(builder: (context) => const Scaffold(
      body: Center(
        child: Text('Errors'),
      ),
    ));
  }
}