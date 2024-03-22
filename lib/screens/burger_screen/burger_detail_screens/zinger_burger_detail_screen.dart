import 'package:flutter/material.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';

class ZingerBurgerDetailScreen extends StatefulWidget {
  const ZingerBurgerDetailScreen({super.key});

  @override
  State<ZingerBurgerDetailScreen> createState() =>
      _ZingerBurgerDetailScreenState();
}

class _ZingerBurgerDetailScreenState extends State<ZingerBurgerDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/img_zinger_detail.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
