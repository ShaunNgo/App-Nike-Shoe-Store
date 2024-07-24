import 'package:flutter/material.dart';
import 'package:ltddnc/pages/admin/cart/admin_cart.dart';
import 'package:ltddnc/pages/admin/dashboard/admin_dashboard.dart';
import 'package:ltddnc/pages/admin/products/admin_products.dart';
import 'package:ltddnc/pages/admin/user/admin_users.dart';
import '../../../components/admin_bottom_nav_bar.dart';
import '../../../components/admin_drawer.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const AdminDashboard(),
    const AdminProducts(),
    const AdminCart(),
    const AdminUsers(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
        ],
      ),
      drawer: const AdminDrawer(),
      bottomNavigationBar: AdminBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
