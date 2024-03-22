import 'package:flutter/material.dart';
import 'package:food_hub_app/components/asset_image_widget/asset_image_widget.dart';
import 'package:food_hub_app/components/item_model/item_model.dart';
import 'package:food_hub_app/components/my_container/my_container.dart';
import 'package:persistent_shopping_cart/model/cart_model.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

import '../../constants/app_colors/app_color.dart';

class PizzaScreen extends StatelessWidget {
  const PizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///Restaurant List====================================
    List<Map<String, dynamic>> dataList = [
      {
        "name": "Pizza Hut",
        "image": "img_pizza_hut.png",
        "time": "7 mints",
        "rating": 4.7,
      },
      {
        "name": "Domino's Pizza",
        "image": "img_domino_pizza.png",
        "time": "10 mints",
        "rating": 4.0,
      },
      {
        "name": "Blaze Pizza",
        "image": "img_blaze_pizza.png",
        "time": "13 mints",
        "rating": 4.4,
      },
    ];

    ///Popular Burgers==============================
    List<ItemModel> itemList = [
      const ItemModel(
        productID: '9',
        productName: 'Cheese Pizza',
        productThumbnail: 'assets/images/img_cheese_pizza.png',
        unitPrice: 40,
        productDiscription: '"Cheese Pizza" invites readers on a timeless journey through the classic simplicity of one of the most beloved pizza varieties. With its golden crust, tangy tomato sauce, and generous layer of melted cheese, cheese pizza captures the essence of comfort and satisfaction in every slice. Follow the journey of cheese pizza as it emerges from the oven, its tantalizing aroma filling the air and beckoning diners near. Whether adorned with a blend of mozzarella, Parmesan, and Romano cheeses or featuring a creamy white sauce topped with rich Gouda or sharp cheddar, cheese pizza offers a delightful canvas for endless flavor variations. Perfect for any occasion, from family gatherings to late-night cravings, cheese pizza embodies the universal love for this timeless and irresistible dish. "Cheese Pizza" celebrates the joy of simplicity and the pleasure of indulging in a classic favorite that never goes out of style.',
      ),
      const ItemModel(
        productID: '10',
        productName: 'Veggie Pizza',
        productThumbnail: 'assets/images/img_veggie_pizza.png',
        unitPrice: 45,
        productDiscription: '"Veggie Pizza" invites readers on a flavorful journey through the garden-fresh world of vegetarian cuisine, embodied in a delightful pizza creation. Bursting with vibrant colors and wholesome ingredients, veggie pizza celebrates the abundance of nature\'s bounty. Follow the journey of veggie pizza as it emerges from the ovens, adorned with a colorful array of toppings such as ripe tomatoes, crisp bell peppers, earthy mushrooms, sweet onions, and tender spinach, all nestled atop a bed of melted cheese and tangy tomato sauce. With its perfect harmony of flavors and textures, veggie pizza showcases the versatility and creativity of vegetarian cooking. Whether enjoyed as a light lunch or a satisfying dinner option, veggie pizza delights the palate and nourishes the body with every delicious bite. "Veggie Pizza" celebrates the beauty of plant-based ingredients and the joy of savoring a wholesome and satisfying meal.',
      ),
      const ItemModel(
        productID: '11',
        productName: 'BBG Pizza',
        productThumbnail: 'assets/images/img_bbg_pizza.png',
        unitPrice: 35,
        productDiscription: '"BBQ Pizza" takes readers on a mouthwatering journey through the smoky and savory world of barbecue-infused pizza. This culinary delight combines the best of two beloved cuisines: Italian pizza and American barbecue. Follow along as BBQ pizza emerges from the fiery grills and ovens, adorned with tangy barbecue sauce, tender grilled meats like chicken or pork, caramelized onions, and gooey melted cheese. With its perfect balance of sweet, smoky, and savory flavors, BBQ pizza captures the essence of outdoor gatherings and cozy evenings around the grill. Whether enjoyed at a backyard barbecue or ordered from a favorite pizzeria, BBQ pizza satisfies cravings and brings people together with its irresistible aroma and bold taste. "BBQ Pizza" celebrates the joy of culinary fusion and the universal love for this indulgent and satisfying pizza variety.',
      ),
      const ItemModel(
        productID: '12',
        productName: 'Greek Pizza',
        productThumbnail: 'assets/images/img_greek_pizza.png',
        unitPrice: 38,
        productDiscription: '"Greek Pizza" invites readers on a culinary odyssey through the vibrant flavors of Greece fused with the beloved classic, pizza. Bursting with Mediterranean ingredients and traditional Greek flair, Greek pizza offers a tantalizing twist on the traditional Italian dish. Follow the journey of Greek pizza as it emerges from the ovens of pizzerias, adorned with toppings like feta cheese, Kalamata olives, fresh tomatoes, and aromatic herbs. With its crisp crust and bold, savory flavors, Greek pizza embodies the essence of culinary fusion, bringing together the best of both worlds. Whether enjoyed as a slice on-the-go or savored as a hearty meal, Greek pizza delights the senses and transports diners to the sun-drenched shores of Greece. "Greek Pizza" celebrates the rich culinary heritage of Greece and the universal love for this innovative and mouthwatering pizza variety.',
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
