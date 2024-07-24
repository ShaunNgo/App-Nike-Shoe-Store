import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AdminBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  AdminBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.secondary,
      fontFamily: 'BeVietnamPro',
      fontWeight: FontWeight.w600,
    );
    return Container(
      color: Theme.of(context).colorScheme.inversePrimary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: GNav(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          color: Theme.of(context).colorScheme.secondary,
          activeColor: Theme.of(context).colorScheme.secondary,
          tabBackgroundColor: const Color.fromARGB(255, 50, 50, 50),
          gap: 8,
          padding: const EdgeInsets.all(16),
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.bar_chart_rounded,
              text: 'Dashboard',
              textStyle: mySecondaryTextStyle,
            ),
            GButton(
              icon: Icons.category,
              text: 'Sản phẩm',
              textStyle: mySecondaryTextStyle,
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: 'Đơn hàng',
              textStyle: mySecondaryTextStyle,
            ),
            GButton(
              icon: Icons.group,
              text: 'Khách hàng',
              textStyle: mySecondaryTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
