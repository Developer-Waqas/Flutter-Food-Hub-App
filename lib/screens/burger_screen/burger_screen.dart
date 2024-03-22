import 'package:flutter/material.dart';
import 'package:food_hub_app/components/asset_image_widget/asset_image_widget.dart';
import 'package:food_hub_app/components/item_model/item_model.dart';
import 'package:food_hub_app/components/my_container/my_container.dart';
import 'package:persistent_shopping_cart/model/cart_model.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

import '../../constants/app_colors/app_color.dart';

class BurgerScreen extends StatelessWidget {
  const BurgerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///Restaurant List====================================
    List<Map<String, dynamic>> dataList = [
      {
        "name": "McDonald's Burgers",
        "image": "img_mcdonals_burgers.png",
        "time": "8-10 mints",
        "rating": 4.5,
      },
      {
        "name": "Burger King",
        "image": "img_burger_king.png",
        "time": "8-13 mints",
        "rating": 4.3,
      },
      {
        "name": "HamBurger",
        "image": "img_in_n_out.png",
        "time": "10-15 mints",
        "rating": 4.7,
      }
    ];

    ///Popular Burgers==============================
    List<ItemModel> itemList = [
      ItemModel(
          productID: '1',
          productName: 'Zinger Burger',
          productThumbnail: 'assets/images/img_zinger_burger.png',
          unitPrice: 65,
          productDiscription: 'The Zinger Burger is KFC’s original fried chicken recipe with a spicy twist. Imagine a crispy breaded chicken fillet, perfectly seasoned and fried to golden perfection. This flavorful chicken is then sandwiched between a sesame seed bun, along with fresh lettuce, creamy mayo, and a dash of zesty flavor. The name “Zinger” aptly captures the unique and tantalizing taste of this classic chicken burger.',
      ),
      ItemModel(
        productID: '2',
        productName: 'Egg Burger',
        productThumbnail: 'assets/images/img_egg_burger.png',
        unitPrice: 40,
        productDiscription: 'Egg Burger Summary: Indulge in our street-style egg burger—a juicy patty topped with a sunny-side-up egg, fresh veggies, and a tangy sauce. Satisfying and flavorful, it’s a delightful culinary experience!.',
      ),
      ItemModel(
          productID: '3',
          productName: 'HamBurger',
          productThumbnail: 'assets/images/img_hamburger.png',
          unitPrice: 55,
          productDiscription: 'A hamburger is a classic fast-food staple—a simple yet satisfying sandwich. It consists of a grilled or fried beef patty, nestled between two halves of a soft bun. The patty is often seasoned with salt, pepper, and other spices, while toppings like lettuce, tomato, cheese, onions, and pickles add freshness and flavor. The magic lies in the combination of textures and tastes, making the humble hamburger a beloved favorite worldwide. ',
      ),
      ItemModel(
          productID: '4',
          productName: 'Angus Burger',
          productThumbnail: 'assets/images/img_angus_burger.png',
          unitPrice: 62,
        productDiscription: 'Savor the premium delight of our Angus burger. Made from succulent Angus beef, this juicy patty is nestled in a soft bun. Classic toppings like lettuce, tomato, and cheese complete this meat lover’s dream.',
      ),
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

            ///Restaurnts Listview===============================
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
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      MyContainer(text: 'BURGER'),
                                      MyContainer(text: 'CHICKEN'),
                                      MyContainer(text: 'FAST FOOD'),
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

            ///Famous burgers=======================================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
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
                    itemCount: itemList.length,
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 210,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      final item = itemList[index];
                      return Container(
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
                            AssetImageWidget(
                              imagePath: item.productThumbnail,
                              height: 100,
                              width: 100,
                              fit: BoxFit.contain,
                              borderRadius: 20,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.productName,
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 17,
                                      fontFamily: 'SofiaSemiBold',
                                    ),
                                  ),
                                  Text(
                                    '\$${item.unitPrice}',
                                    style: TextStyle(
                                      color: grey,
                                      fontSize: 15,
                                      fontFamily: 'SofiaRegular',
                                    ),
                                  ),
                                  PersistentShoppingCart()
                                      .showAndUpdateCartItemWidget(
                                    inCartWidget: Container(
                                      height: 30,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        border:
                                            Border.all(color: splashColor),
                                        borderRadius:
                                            BorderRadius.circular(50),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Remove',
                                          style: TextStyle(
                                              color: black,
                                              fontFamily: 'SofiaMedium'),
                                        ),
                                      ),
                                    ),
                                    notInCartWidget: Container(
                                      height: 30,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: splashColor,
                                        borderRadius:
                                            BorderRadius.circular(50),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Add to Cart',
                                          style: TextStyle(
                                              color: white,
                                              fontFamily: 'SofiaMedium'),
                                        ),
                                      ),
                                    ),
                                    product: PersistentShoppingCartItem(
                                      productId: item.productID,
                                      productName: item.productName,
                                      unitPrice: double.parse(
                                          item.unitPrice.toString()),
                                      quantity: 1,
                                      productThumbnail: item.productThumbnail,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
