import 'package:flutter/material.dart';
import 'package:food_hub_app/components/asset_image_widget/asset_image_widget.dart';
import 'package:food_hub_app/components/item_model/item_model.dart';
import 'package:food_hub_app/components/my_container/my_container.dart';
import 'package:persistent_shopping_cart/model/cart_model.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

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
        "time": "7 mints",
        "rating": 4.9,
      },
      {
        "name": "Donut Palace Donuts",
        "image": "img_donut_palace.png",
        "time": "10 mints",
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
    List<ItemModel> itemList = [
      ItemModel(
        productID: '5',
        productName: 'Sprinkle Donut',
        productThumbnail: 'assets/images/img_sprinkle_donut.png',
        unitPrice: 30,
        productDiscription: 'Sprinkle Donut is a whimsical tale that follows the journey of a young donut named Sprinkle as it navigates the bustling bakery life. Faced with the challenge of finding its place among the other pastries, Sprinkle embarks on a quest for self-discovery, embracing its unique sprinkled exterior and discovering the power of individuality. Through colorful illustrations and endearing characters, the story celebrates diversity, acceptance, and the beauty of being true to oneself in a world filled with different flavors and textures.',
      ),
      ItemModel(
        productID: '6',
        productName: 'Glazed Donut',
        productThumbnail: 'assets/images/img_glazed_donut.png',
        unitPrice: 35,
        productDiscription: 'Glazed Donut takes readers on a delectable journey through the bakery, starring a classic favorite: the glazed donut. Follow along as this sweet treat navigates the hustle and bustle of the bakery, encountering a diverse cast of characters and discovering the true essence of its simple yet irresistible charm. With its glossy exterior and soft interior, the glazed donut embodies the timeless appeal of tradition and simplicity. Perfect for your food hub app, "Glazed Donut" offers a delightful story that celebrates the beauty of simplicity and the universal love for this beloved pastry.',
      ),
      ItemModel(
        productID: '7',
        productName: 'Cronut Donut',
        productThumbnail: 'assets/images/img_cronut_donut.png',
        unitPrice: 25,
        productDiscription: 'Cronut Donut invites readers on a delicious adventure through the innovative world of pastry fusion. Born from the creative minds of bakers seeking to blend the flakiness of a croissant with the sweetness of a donut, the cronut donut emerges as a delightful culinary marvel. Follow the cronut donut\'s journey as it captivates taste buds and sparks imaginations in the bustling bakery scene. With its unique combination of textures and flavors, the cronut donut embodies the spirit of culinary innovation and the joy of indulging in something truly special. A perfect addition to your food hub app, "Cronut Donut" celebrates the magic of culinary creativity and the joy of savoring each delightful bite.',
      ),
      ItemModel(
        productID: '8',
        productName: 'Cruller Donut',
        productThumbnail: 'assets/images/img_cruller_donut.png',
        unitPrice: 45,
        productDiscription: '"Cruller Donut" whisks readers away on a journey through the enchanting world of this twisted, golden pastry. With its distinctive shape and delicate texture, the cruller donut stands out among its bakery peers. Follow along as this elegant treat navigates the bustling bakery scene, captivating customers with its irresistible aroma and delectable taste. With its rich history and timeless appeal, the cruller donut embodies the artistry and craftsmanship of traditional baking. "Cruller Donut" offers a delightful story that celebrates the beauty of simplicity and the timeless allure of this beloved pastry.',
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
                                        fontSize: 18,
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
