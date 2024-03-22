import 'package:flutter/material.dart';
import 'package:food_hub_app/components/asset_image_widget/asset_image_widget.dart';
import 'package:food_hub_app/components/item_model/item_model.dart';
import 'package:food_hub_app/components/my_container/my_container.dart';
import 'package:persistent_shopping_cart/model/cart_model.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

import '../../constants/app_colors/app_color.dart';

class PastaScreen extends StatelessWidget {
  const PastaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///Restaurant List====================================
    List<Map<String, dynamic>> dataList = [
      {
        "name": "Zesty Pesto Italian Pasta ",
        "image": "img_zesto_pasta.png",
        "time": "5 mints",
        "rating": 4.5,
      },
      {
        "name": "Penne Magic Pasta",
        "image": "img_penne_magic_pasta.png",
        "time": "7 mints",
        "rating": 4.3,
      },
    ];

    ///Popular Burgers==============================
    List<ItemModel> itemList = [
      const ItemModel(
        productID: '16',
        productName: 'Farfalle Pasta',
        productThumbnail: 'assets/images/img_farfalle_pasta.png',
        unitPrice: 20,
        productDiscription: '"Farfalle Pasta" invites readers on a culinary journey through the enchanting world of Italian cuisine. Named after butterflies due to its distinctive bow-tie shape, farfalle pasta is as visually stunning as it is delicious. Follow along as this versatile pasta navigates its way through traditional Italian kitchens and modern dining tables alike, captivating diners with its elegant appearance and satisfying texture. With its ability to pair perfectly with a variety of sauces and ingredients, farfalle pasta embodies the essence of versatility and creativity in cooking. Whether served in a creamy Alfredo sauce or tossed with fresh vegetables in a light vinaigrette, farfalle pasta delights the senses and brings joy to any meal. "Farfalle Pasta" celebrates the rich culinary heritage of Italy and the timeless appeal of this beloved pasta shape.',

      ),
      const ItemModel(
        productID: '17',
        productName: 'Linguine Pasta',
        productThumbnail: 'assets/images/img_linguine_pasta.png',
        unitPrice: 32,
        productDiscription: '"Linguine Pasta" invites readers on a culinary journey through the flavorful world of Italian cuisine. With its long, flat shape resembling narrow ribbons, linguine pasta exudes elegance and versatility in every bite. Follow along as this beloved pasta variety graces the tables of traditional trattorias and contemporary kitchens alike, enchanting diners with its smooth texture and ability to perfectly capture the flavors of accompanying sauces and ingredients. Whether tossed in a robust marinara sauce or adorned with succulent seafood in a garlic-infused broth, linguine pasta embodies the essence of simplicity and sophistication in Italian cooking. "Linguine Pasta" celebrates the timeless charm of Italy\'s culinary traditions and the universal appeal of this classic pasta shape.',
      ),
      const ItemModel(
        productID: '18',
        productName: 'Ditalini Pasta',
        productThumbnail: 'assets/images/img_ditalini_pasta.png',
        unitPrice: 35,
        productDiscription: '"Ditalini Pasta" beckons readers to savor the delightful essence of Italian comfort cuisine. Named for its diminutive size and tube-like shape, ditalini pasta offers a charming addition to soups, salads, and casseroles. Follow the journey of ditalini pasta as it finds its way into the heart of traditional Italian kitchens and modern culinary creations. With its versatile nature and ability to absorb the rich flavors of hearty broths and savory sauces, ditalini pasta embodies the essence of warmth and comfort in every spoonful. Whether nestled in a bowl of hearty minestrone soup or adding texture to a vibrant pasta salad, ditalini pasta brings joy and satisfaction to any meal. "Ditalini Pasta" celebrates the rich culinary heritage of Italy and the timeless appeal of this beloved pasta shape.',
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
                  itemCount: 2,
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
                              const SizedBox(
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
