import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

import '../../components/asset_image_widget/asset_image_widget.dart';
import '../../constants/app_colors/app_color.dart';

class ShoppingCartView extends StatefulWidget {
  const ShoppingCartView({super.key});

  @override
  State<ShoppingCartView> createState() => _ShoppingCartViewState();
}

class _ShoppingCartViewState extends State<ShoppingCartView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.5),
        child: Column(
          children: [
            Expanded(
              child: PersistentShoppingCart().showCartItems(
                cartTileWidget: ({required data}) => Card(
                  shadowColor: splashColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        AssetImageWidget(
                          imagePath: data.productThumbnail.toString(),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data.productName,
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
                                      '\$${data.unitPrice}',
                                      style: TextStyle(
                                        color: grey,
                                        fontSize: 15,
                                        fontFamily: 'SofiaRegular',
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        PersistentShoppingCart()
                                            .removeFromCart(data.productId);
                                      },
                                      icon: Icon(
                                        CupertinoIcons.delete,
                                        color: splashColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                PersistentShoppingCart()
                                    .incrementCartItemQuantity(data.productId);
                              },
                              icon: Icon(
                                CupertinoIcons.add_circled_solid,
                                color: splashColor,
                              ),
                            ),
                            Text(
                              data.quantity.toString(),
                              style: TextStyle(
                                color: black,
                                fontFamily: 'SofiaSemiBold',
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                PersistentShoppingCart()
                                    .decrementCartItemQuantity(data.productId);
                              },
                              icon: Icon(
                                Icons.remove_circle,
                                color: grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                showEmptyCartMsgWidget: const Center(
                  child: Text(
                    'Cart is empty',
                    style: TextStyle(
                      fontFamily: 'SofiaSemiBold',
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
            PersistentShoppingCart().showTotalAmountWidget(
                cartTotalAmountWidgetBuilder: (totalAmount) {
              return Visibility(
                visible: totalAmount == 0.0 ? false : true,
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: splashColor),
                  child: Center(
                    child: Text(
                      'Total Amount: \$' + totalAmount.toString(),
                      style: TextStyle(
                        fontFamily: 'SofiaSemiBold',
                        fontWeight: FontWeight.bold,
                        color: white,
                      ),
                    ),
                  ),
                ),
              );
            }),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
