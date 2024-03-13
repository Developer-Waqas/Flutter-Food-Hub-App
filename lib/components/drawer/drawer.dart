import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utilities/routes_name/routes_name.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              accountName: const Text(
                'Waqas Khan',
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
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text('Delivery Address'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text('Payment Methods'),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RoutesName.loginScreen,
                      (route) => false,
                );
              },
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
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
