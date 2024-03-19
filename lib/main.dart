import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_hub_app/firebase_options.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

import 'utilities/routes_name/routes_name.dart';
import 'utilities/routes_paths/routes_paths.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await PersistentShoppingCart().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.splashScreen,
      onGenerateRoute: RoutesPaths.generateRoute,
    );
  }
}


