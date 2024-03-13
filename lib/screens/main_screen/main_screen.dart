import 'package:flutter/material.dart';
import 'package:food_hub_app/screens/home_screen/home_screen.dart';

import '../../components/drawer/drawer.dart';
import '../../constants/app_colors/app_color.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;

  List _pages = [
    HomeScreen(),
    const Center(
      child: Text("About"),
    ),
    const Center(
      child: Text("Products"),
    ),
    const Center(
      child: Text("Contact"),
    ),
    const Center(
      child: Text("Settings"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
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
      drawer: const MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        iconSize: 30,
        selectedLabelStyle: TextStyle(
          fontFamily: 'SofiaMedium',
          fontSize: 15,
        ),
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: splashColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: "Location",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
        ],
      ),
      body: _pages[_selectedTab],
    );
  }
}
