import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub_app/components/custom_text_feild/custom_text_feild.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';
import 'package:food_hub_app/constants/app_styles/app_style.dart';

import '../../utilities/routes_name/routes_name.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    const Text("Text"),
    const Text("Text 1"),
    const Text("Text 2"),
    const Text("Text 3"),
    const Text("Text 4"),
    const Text("Text 5"),
    const Text("Text 6"),
  ];

  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      drawer: Drawer(
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
      ),
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/img_profile.png'))),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'What would you like to order',
                style: headingStyle5a,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 51,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xffEEEEEE),
                      )
                    ),
                    child: CustomTextField(
                      prefixIcon: const Icon(CupertinoIcons.search),
                      hintText: 'Find for food or restaurant...',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.bars)),
                    ),
                  ),
                ],
              ),

              Container(
                  height: 120,
                  child: ListView.builder(
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        child: GestureDetector(
                          onTap: () {
                            selectedTabIndex = index;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                                color: selectedTabIndex == index
                                    ? splashColor
                                    : Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: selectedTabIndex == index
                            ? Colors.grey
                                : white,
                                      blurRadius: 3,
                                      offset: Offset(0, 10))
                                ],
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              scale: 2,
                                                image: AssetImage(
                                                    "assets/images/img_burger.png"))),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Burger",
                                    style: TextStyle(
                                        color: selectedTabIndex == index
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 10),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                tabs[selectedTabIndex]
            ],
          ),
        ),
      ),
    );
  }
}
