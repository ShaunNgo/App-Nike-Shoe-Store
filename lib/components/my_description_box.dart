import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
      fontFamily: 'BeVietnamPro',
    );
    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
      fontFamily: 'BeVietnamPro',
    );
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.primary),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('Miễn phí', style: myPrimaryTextStyle),
              Text('Phí giao hàng', style: mySecondaryTextStyle),
            ],
          ),
          Column(
            children: [
              Text('4-5 ngày', style: myPrimaryTextStyle),
              Text('Thời gian giao hàng', style: mySecondaryTextStyle),
            ],
          ),
        ],
      ),
    );
  }
}
