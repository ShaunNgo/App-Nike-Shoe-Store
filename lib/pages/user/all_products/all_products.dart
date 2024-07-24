import 'package:flutter/material.dart';
import 'package:ltddnc/components/my_shoe_tile.dart';
import 'package:ltddnc/components/my_silver_app_bar.dart';
import 'package:ltddnc/components/my_tab_bar.dart';
import 'package:ltddnc/data/models/shoe.dart';
import 'package:ltddnc/pages/user/shoe_details/shoe_details.dart';
import 'package:provider/provider.dart';

import '../../../components/my_current_location.dart';
import '../../../components/my_description_box.dart';
import '../../../data/models/store.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: ShoeCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Shoe> _filterMenuByCategory(ShoeCategory category, List<Shoe> fullMenu) {
    return fullMenu.where((shoe) => shoe.category == category).toList();
  }

  List<Widget> getShoeInThisCategory(List<Shoe> fullMenu) {
    return ShoeCategory.values.map((category) {
      List<Shoe> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final shoe = categoryMenu[index];
          return ShoeTile(
            shoe: shoe,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShoeDetails(shoe: shoe),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const MyCurrentLocation(),
                const MyDescriptionBox(),
              ],
            ),
          )
        ],
        body: Consumer<Store>(
          builder: (context, store, child) => TabBarView(
            controller: _tabController,
            children: getShoeInThisCategory(store.menu),
          ),
        ),
      ),
    );
  }
}
