import 'package:flutter/material.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';

class MyButton2 extends StatelessWidget {
  String text;
  ImageProvider<Object> image;

  MyButton2({
    super.key,
    this.text = '',
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 53,
        width: 139.26,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(27.41),
        ),
        child: Row(
          children: [
            Image(
                image: image),
            Text(
              text,
              style: TextStyle(
                  fontFamily: 'SofiaRegular', color: splashColor, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
