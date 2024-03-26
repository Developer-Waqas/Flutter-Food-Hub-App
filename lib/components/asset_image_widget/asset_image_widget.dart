import 'package:flutter/material.dart';

class AssetImageWidget extends StatelessWidget {
  String imagePath;
  double height;
  double width;
  BoxFit? fit;
  double borderRadius;

  AssetImageWidget({
    super.key,
    required this.imagePath,
    this.height=40,
    this.width=40,
    this.fit,
    this.borderRadius=18,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Image.asset(
    
        imagePath,
        height: height,
        width: width,
        fit: fit,
      ),
    );
  }
}
