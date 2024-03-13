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
              leading: const Icon(CupertinoIcons.person),
              title: const Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.star),
              title: const Text('Rewards'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text('Premium'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout_outlined),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RoutesName.loginScreen,
                      (route) => false,
                );
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
