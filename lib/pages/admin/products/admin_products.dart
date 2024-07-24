import 'package:flutter/material.dart';
import 'package:ltddnc/components/my_search_box.dart';
import 'package:ltddnc/pages/admin/products/add_edit_products.dart';

class AdminProducts extends StatefulWidget {
  const AdminProducts({super.key});

  @override
  State<AdminProducts> createState() => _AdminProductsState();
}

class _AdminProductsState extends State<AdminProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AddEditProducts(),
          ),
        ),
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25),
        child: Column(
          children: [
            const SizedBox(height: 15),
            SearchBox(),
            const SizedBox(height: 25),
            Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/air/air_1.png',
                        height: 100,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nike Air 1',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'BeVietnamPro',
                              ),
                            ),
                            Text(
                              '2,100,000 đ',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inverseSurface,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'BeVietnamPro',
                              ),
                            ),
                            Text(
                              'Air',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'BeVietnamPro',
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Siêu thoải mái!',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'BeVietnamPro',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Row(
                          children: [
                            Icon(
                              Icons.edit,
                              color: Colors.yellow.shade700,
                            ),
                            const SizedBox(width: 10),
                            Icon(
                              Icons.delete,
                              color:
                                  Theme.of(context).colorScheme.inverseSurface,
                            ),
                          ],
                        ),
                        const SizedBox(width: 15),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
