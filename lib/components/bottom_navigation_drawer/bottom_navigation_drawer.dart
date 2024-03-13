import 'package:flutter/material.dart';

import '../../constants/app_colors/app_color.dart';

class MyBottomNavigationDrawer extends StatefulWidget {
  const MyBottomNavigationDrawer({super.key});

  @override
  State<MyBottomNavigationDrawer> createState() => _MyBottomNavigationDrawerState();
}

class _MyBottomNavigationDrawerState extends State<MyBottomNavigationDrawer> {

  int _selectedTab = 0;
  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
