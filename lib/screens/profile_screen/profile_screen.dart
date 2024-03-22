import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../constants/app_colors/app_color.dart';
import '../../utilities/routes_name/routes_name.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage(
                  'assets/images/img_profile_bg_design.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 130,
                  left: 145,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: white, width: 8),
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                    maxRadius: 50,
                    backgroundColor: white,
                    backgroundImage:
                        AssetImage('assets/images/img_profile.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 200,
                  left: 235,
                ),
                child: Container(
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                    color: white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    CupertinoIcons.camera_fill,
                    color: grey,
                    size: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, top: 60),
                child: Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, RoutesName.mainScreen);
                    },
                    icon: Icon(
                      CupertinoIcons.back,
                      color: black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            'Waqas Muhammad',
            style: TextStyle(
              color: black,
              fontFamily: 'SofiaSemiBold',
              fontSize: 20
            ),
          ),
          SizedBox(height: 5,),
          Text(
            'Edit profile',
            style: TextStyle(
                color: grey,
                fontFamily: 'SofiaRegular',
                fontSize: 14
            ),
          ),
        ],
      ),
    );
  }
}
