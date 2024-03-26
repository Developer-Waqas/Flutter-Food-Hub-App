import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:food_hub_app/screens/address_screen/address_screen.dart';
import 'package:food_hub_app/screens/my_orders_screen/my_orders.dart';
import 'package:food_hub_app/screens/home_screen/home_screen.dart';
import 'package:food_hub_app/screens/shopping_cart_veiw/shopping_cart_veiw.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

import '../../components/drawer/drawer.dart';
import '../../constants/app_colors/app_color.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedTab = 0;

  final List _pages = [
    HomeScreen(),
    const AddressScreen(),
    const ShoppingCartView(),
    const Center(
      child: Text("No foods are in favourites",style: TextStyle(
        fontSize: 18,
        fontFamily: 'SofiaSemiBold',
      ),),
    ),
    const Center(
      child: Text("No Notifications yet!",style: TextStyle(
        fontSize: 30,
        fontFamily: 'SofiaSemiBold',
      ),),
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

      ///Drawer=============================>>>>>>>>>>
      drawer: MyDrawer(),


      ///bottom navigation drawer======================>>>>>>>>>>>>>>>
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
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: "Address",
          ),
          BottomNavigationBarItem(
            icon: PersistentShoppingCart().showCartItemCountWidget(
                cartItemCountWidgetBuilder: (itemCount) {
              return Badge(
                backgroundColor: Colors.yellow,
                label: Text(
                  itemCount.toString(),
                  style: TextStyle(
                    fontFamily: 'SofiaMedium',
                    color: black,
                  ),
                ),
                child: Icon(
                  CupertinoIcons.bag_fill,
                  color: splashColor,
                ),
              );
            }),
            label: "Shopping Cart",
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

      ///tab pages============>>>>>>>>>>>>
      body: _pages[_selectedTab],
    );
  }
}
