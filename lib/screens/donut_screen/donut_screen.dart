import 'package:flutter/material.dart';
import 'package:food_hub_app/components/my_container/my_container.dart';

import '../../constants/app_colors/app_color.dart';

class DonutScreen extends StatelessWidget {
  const DonutScreen({super.key});

  @override
  Widget build(BuildContext context) {

    ///Restaurant List====================================
    List<Map<String, dynamic>> dataList = [
      {
        "name": "Dikin' Donuts",
        "image": "img_dikin_donut.png",
        "time": "5 mints",
        "rating": 4.9,
      },
      {
        "name": "Donut Palace Donuts",
        "image": "img_donut_palace.png",
        "time": "8 mints",
        "rating": 4.2,
      },
      {
        "name": "Yum Yum Donuts",
        "image": "img_yum_yum_donut.png",
        "time": "13 mints",
        "rating": 4.6,
      },
    ];

    ///Popular Burgers==============================
    List<Map<String, dynamic>> dataList2 = [
      {
        "name": "Sprinkle Donut",
        "image": "img_sprinkle_donut.png",
        "price": 5.8,
      },
      {
        "name": "Glazed Donut",
        "image": "img_glazed_donut.png",
        "price": 5.0,
      },
      {
        "name": "Cronut Donut",
        "image": "img_cronut_donut.png",
        "price": 5.5,
      },
      {
        "name": "Cruller Donut",
        "image": "img_cruller_donut.png",
        "price": 4.8,
      },
    ];

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        decoration: BoxDecoration(
          color: white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Featured Restaurants',
                  style: TextStyle(
                    color: black,
                    fontSize: 18,
                    fontFamily: 'SofiaSemiBold',
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Row(
                  children: [
                    Text(
                      'View All',
                      style: TextStyle(
                          color: splashColor, fontFamily: 'SofiaRegular'),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: splashColor,
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 300,
              child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                      ),
                      child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  topLeft: Radius.circular(15),
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      'assets/images/${dataList[index]['image']}'),
                                ),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 14),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 75,
                                          height: 28.07,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(100),
                                            color: white,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  '${dataList[index]['rating']}',
                                                  style: TextStyle(
                                                    fontFamily: 'SofiaSemiBold',
                                                    color: black,
                                                  ),
                                                ),
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 18,
                                                ),
                                                Text(
                                                  '(25+)',
                                                  style: TextStyle(
                                                    fontFamily: 'SofiaRegular',
                                                    color: grey2,
                                                    fontSize: 8.19,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: splashColor,
                                              ),
                                              child: Icon(
                                                Icons.favorite,
                                                color: white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '${dataList[index]['name']}',
                                    style: TextStyle(
                                      fontFamily: 'SofiaSemiBold',
                                      color: black,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.delivery_dining,
                                            color: splashColor,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Free Delivery',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Sofia Regular',
                                              color: grey2,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.access_time_rounded,
                                            color: splashColor,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '${dataList[index]['time']}',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Sofia Regular',
                                              color: grey2,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      MyContainer(text: 'SWEATS'),
                                      const SizedBox(width: 15,),
                                      MyContainer(text: 'DONUTS'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Popular Items',
                    style: TextStyle(
                      color: black,
                      fontSize: 18,
                      fontFamily: 'SofiaSemiBold',
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GridView.builder(
                    itemCount: dataList2.length,
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 160,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 1),
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: black.withOpacity(0.3),
                                    blurRadius: 5,
                                    offset: const Offset(5, 5)),
                              ]),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(10),
                                child: Image.asset(
                                  "assets/images/${dataList2[index]['image']}",
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),

                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8,
                                ),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "${dataList2[index]['name']}",
                                        style: TextStyle(
                                          fontFamily: 'SofiaSemiBold',
                                          color: black,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        '\$${dataList2[index]['price']}',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Sofia Regular',
                                          color: grey2,
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
                    },
                  )
                ],
              ),
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
