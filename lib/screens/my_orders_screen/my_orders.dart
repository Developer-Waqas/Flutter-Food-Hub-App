import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_hub_app/constants/app_colors/app_color.dart';

import '../../components/asset_image_widget/asset_image_widget.dart';
import '../../components/item_model/item_model.dart';
import '../../constants/app_styles/app_style.dart';
import '../../utilities/routes_name/routes_name.dart';

class MyOrders extends StatelessWidget {
  MyOrders({super.key});

  List<Map<String, dynamic>> dataList = [
    {
      "name": "Zinger Burger",
      "images": "img_zinger_burger.png",
      "price": 65,
      "order": "order is placed",
    },
    {
      "name": "Choc Cake",
      "images": "img_choc_cake.png",
      "price": 40,
      "order": "order is completed",
    },
    {
      "name": "Farfalle Pasta",
      "images": "img_farfalle_pasta.png",
      "price": 20,
      "order": "order is canceled",
    },
    {
      "name": "Cheese Pizza",
      "images": "img_cheese_pizza.png",
      "price": 40,
      "order": "order is received"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage(
                    'assets/images/img.png',
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
                        Navigator.popAndPushNamed(
                            context, RoutesName.mainScreen);
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
              'Orders',
              style: headingStyle5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.5),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: white,
                ),
                child: ListView.builder(
                    itemCount: dataList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        shadowColor: splashColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AssetImageWidget(
                                imagePath:
                                    'assets/images/${dataList[index]['images']}',
                                height: 100,
                                width: 100,
                                fit: BoxFit.contain,
                                borderRadius: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${dataList[index]['name']}',
                                        style: TextStyle(
                                          color: black,
                                          fontSize: 17,
                                          fontFamily: 'SofiaSemiBold',
                                        ),
                                      ),
                                      Text(
                                        'Medium size only available',
                                        style: TextStyle(
                                          color: splashColor,
                                          fontSize: 12,
                                          fontFamily: 'SofiaMedium',
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '\$${dataList[index]['price']}',
                                            style: TextStyle(
                                              color: grey,
                                              fontSize: 15,
                                              fontFamily: 'SofiaRegular',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '${dataList[index]['order']}',
                                        style: TextStyle(
                                          color: splashColor,
                                          fontSize: 12,
                                          fontFamily: 'SofiaMedium',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
