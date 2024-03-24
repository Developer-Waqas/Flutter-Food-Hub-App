import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utilities/routes_name/routes_name.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final auth = FirebaseAuth.instance;
String name = '';

  loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    name = sp.getString('name') ?? 'Error';
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ///User holder account detail========
            UserAccountsDrawerHeader(
              ///name================
              accountName: Text(
                name.toString(),
                style: TextStyle(
                  fontFamily: 'Poppins Bold',
                  color: Colors.black,
                ),
              ),

              ///email=================
              accountEmail: const Text(
                'WaqasKHan@gmail.com',
                style: TextStyle(
                  fontFamily: 'Poppins Light',
                  color: Colors.black,
                ),
              ),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
              )),

              ///profile picture=========================
              currentAccountPicture: Container(
                height: 38,
                width: 38,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/img_profile.png'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            ///Navigation drawer list===============
            ListTile(
              leading: const Icon(CupertinoIcons.square_list_fill),
              title: const Text('My Orders'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.person_alt),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, RoutesName.profileScreen, (route) => false);
              },
            ),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text('Delivery Address'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text('Payment Methods'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.mail),
              title: const Text('Contact Us'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.help_center),
              title: const Text('Help & FAQs'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                auth.signOut().then((value) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, RoutesName.loginScreen, (route) => false);
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
