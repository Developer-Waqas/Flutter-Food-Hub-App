import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_hub_app/components/my_container/my_container2.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/app_colors/app_color.dart';
import '../../utilities/routes_name/routes_name.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  String name = '';
  String email = '';

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    name = sp.getString('name') ?? '';
    email = sp.getString('email') ?? '';
    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const Image(
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
                        const AssetImage('assets/images/img_profile.png'),
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
            name.toString(),
            style: TextStyle(
                color: black, fontFamily: 'SofiaSemiBold', fontSize: 20),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Edit profile',
            style: TextStyle(
                color: grey, fontFamily: 'SofiaRegular', fontSize: 14),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text('Full Name',
                  style: TextStyle(
                      fontFamily: 'SofiaSemiBold',
                      color: grey,
                      fontSize: 14
                  ),
                ),
                const SizedBox(
              height: 10,
            ),
            MyContainerTwo(
              text: name.toString(),
              style: TextStyle(
                fontFamily: 'SofiaMedium',
                color: black,
                fontSize: 17
              ),
              height: 65,
              width: 341,
              borderRadius: 10,
              border: Border.all(
                color: Color(0xffEEEEEE),
              ),
              color: grey.withOpacity(0.2),
            ),
                SizedBox(height: 10,),
                Divider(

                  color: grey,
                  thickness: 1,
                ),
            const SizedBox(
              height: 10,
            ),
                Text('Email',
              style: TextStyle(
                  fontFamily: 'SofiaSemiBold',
                  color: grey,
                  fontSize: 14
              ),),
            const SizedBox(
              height: 10,
            ),
                     MyContainerTwo(
              text: email.toString(),
             style: TextStyle(
                 fontFamily: 'SofiaMedium',
                 color: black,
                 fontSize: 17
             ),
              height: 65,
              width: 341,
              borderRadius: 10,
              border: Border.all(
                color: Color(0xffEEEEEE),
              ),
              color: grey.withOpacity(0.2),
            ),

                SizedBox(height: 10,),
                Divider(

                  color: grey,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
