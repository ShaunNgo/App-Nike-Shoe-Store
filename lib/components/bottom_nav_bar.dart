import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        gap: 8,
        color: Theme.of(context).colorScheme.primary,
        activeColor: Theme.of(context).colorScheme.inversePrimary,
        tabActiveBorder:
            Border.all(color: Theme.of(context).colorScheme.secondary),
        tabBackgroundColor: Theme.of(context).colorScheme.tertiary,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 25,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home_filled,
            text: 'Trang chủ',
            textStyle: TextStyle(
              fontFamily: 'BeVietnamPro',
              fontWeight: FontWeight.w600,
            ),
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Giỏ hàng',
            textStyle: TextStyle(
              fontFamily: 'BeVietnamPro',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
