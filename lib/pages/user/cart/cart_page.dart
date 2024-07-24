import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ltddnc/components/my_button.dart';
import 'package:ltddnc/pages/user/payment/payment_page.dart';
import 'package:provider/provider.dart';

import '../../../components/my_cart_tile.dart';
import '../../../data/models/store.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Store>(
      builder: (context, store, child) {
        final userCart = store.cart;

        return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? Expanded(
                            child: Center(
                              child: Text(
                                'Đơn hàng đang trống...',
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                  fontSize: 15,
                                  fontFamily: 'BeVietnamPro',
                                ),
                              ),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                final cartItem = userCart[index];
                                return MyCartTile(cartItem: cartItem);
                              },
                            ),
                          ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Divider(
                  height: 1,
                  endIndent: 25,
                  indent: 25,
                  color: Theme.of(context).colorScheme.primary),
              Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Tổng ',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'BeVietnamPro',
                          ),
                        ),
                        Text(
                          '(tạm tính):',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'BeVietnamPro',
                          ),
                        ),
                      ],
                    ),
                    Consumer<Store>(
                      builder: (context, store, child) => Text(
                        store.displayTotalPrice(),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inverseSurface,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'BeVietnamPro',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              MyButton(
                opTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentPage(),
                  ),
                ),
                text: 'Đến thanh toán',
              ),
            ],
          ),
        );
      },
    );
  }
}
