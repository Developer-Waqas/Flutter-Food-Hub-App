import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  String text;

  MyContainer({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 85,
      decoration: BoxDecoration(
        color: Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'SofiaRegular',
            color: Color(0xff8A8E9B),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
