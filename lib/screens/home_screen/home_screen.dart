import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub_app/components/custom_text_feild/custom_text_feild.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';
import 'package:food_hub_app/constants/app_styles/app_style.dart';
import 'package:food_hub_app/screens/burger_screen/burger_screen.dart';
import 'package:food_hub_app/screens/cake_screen/cake_screen.dart';
import 'package:food_hub_app/screens/donut_screen/donut_screen.dart';
import 'package:food_hub_app/screens/pizza_screen/pizza_screen.dart';
import 'package:food_hub_app/screens/shawarma_screen/shawarma_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> dataList = [
    {
      "name": "Burger",
      "images": "img_burger_logo.png",
    },
    {
      "name": "Donut",
      "images": "img_donut_logo.png",
    },
    {
      "name": "Pizza",
      "images": "img_pizza_logo.png",
    },
    {
      "name": "Cakes",
      "images": "img_cake_logo.png",
    },
    {
      "name": "Asian",
      "images": "img_asian_logo.png",
    },
    {
      "name": "Fries",
      "images": "img_fries_logo.png",
    },
  ];

  List<Widget> tabs = [
    const BurgerScreen(),
    const DonutScreen(),
    const PizzaScreen(),
    const CakeScreen(),
    const ShawarmaScreen(),
    const Center(child: Text("COMING SOON...",style: TextStyle(
      fontFamily: 'Phosphate',
      fontSize: 35,
    ),)),
  ];

  int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
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
                        )),
                    child: CustomTextField(
                      fillColor: const Color(0xffEFEFEF),
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
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(CupertinoIcons.bars)),
                    ),
                  ),
                ],
              ),
              Container(
                height: 132,
                child: ListView.builder(
                  itemCount: dataList.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          selectedTabIndex = index;
                          setState(() {});
                        },
                        child: Container(
                          height: 98,
                          width: 58.57,
                          decoration: BoxDecoration(
                              color: selectedTabIndex == index
                                  ? splashColor
                                  : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: selectedTabIndex == index
                                        ? splashColor.withOpacity(0.5)
                                        : black.withOpacity(0.4),
                                    blurRadius: 6,
                                    offset: const Offset(5, 5))
                              ],
                              borderRadius: BorderRadius.circular(100)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              scale: 2,
                                              image: AssetImage(
                                                  "assets/images/${dataList[index]['images']}"))),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  '${dataList[index]['name']}',
                                  style: TextStyle(
                                      color: selectedTabIndex == index
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 10),
                                ),
                                const SizedBox(
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
