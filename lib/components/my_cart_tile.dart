import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ltddnc/components/my_quantity_selector.dart';
import 'package:ltddnc/data/models/cart_item.dart';
import 'package:provider/provider.dart';

import '../data/models/store.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Store>(
      builder: (context, store, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color:
                  Theme.of(context).colorScheme.inversePrimary.withOpacity(0.2),
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cartItem.shoe.imagePath!,
                      height: 130,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cartItem.shoe.name!,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'BeVietnamPro',
                          ),
                        ),
                        Text(
                          NumberFormat('###,###.### ₫')
                              .format(cartItem.shoe.price),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.inverseSurface,
                            fontSize: 15,
                            fontFamily: 'BeVietnamPro',
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: cartItem.selectedSize.isEmpty ? 0 : 40,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: cartItem.selectedSize
                                      .map(
                                        (size) => FilterChip(
                                          label: Row(
                                            children: [
                                              Text(size.name),
                                            ],
                                          ),
                                          shape: StadiumBorder(
                                              side: BorderSide(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary)),
                                          onSelected: (value) {},
                                          backgroundColor: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          labelStyle: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontSize: 12,
                                            fontFamily: 'BeVietnamPro',
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: SizedBox(
                                width: 98,
                                height: 43,
                                child: QuanitySelector(
                                  quantity: cartItem.quantity,
                                  shoe: cartItem.shoe,
                                  onDecrement: () {
                                    store.removeFromCart(cartItem);
                                  },
                                  onIncrement: () {
                                    store.addToCart(
                                        cartItem.shoe, cartItem.selectedSize);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
