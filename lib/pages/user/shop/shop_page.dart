import 'package:flutter/material.dart';
import 'package:ltddnc/data/models/shoe.dart';
import 'package:ltddnc/pages/user/all_products/all_products.dart';
import '../../../components/shoe_tile.dart';
import '../../../data/provider/shoes_provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  List<Shoe> lstShoe = [];
  Future<String> loadShoeList() async {
    lstShoe = await ReadData().loadData();
    return '';
  }

  @override
  void initState() {
    super.initState();
    loadShoeList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tìm kiếm sản phẩm...',
                  style: TextStyle(
                    fontFamily: 'BeVietnamPro',
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Theme.of(context).colorScheme.primary,
                )
              ],
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Bán Chạy Nhất 🔥',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontFamily: 'BeVietnamPro',
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AllProducts(),
                          ),
                        );
                      },
                      child: Text(
                        'Xem tất cả',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontFamily: 'BeVietnamPro',
                        ),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          FutureBuilder(
            future: loadShoeList(),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              return Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lstShoe.length,
                  itemBuilder: (context, index) {
                    return itemShoeView(lstShoe[index], context);
                  },
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Divider(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
