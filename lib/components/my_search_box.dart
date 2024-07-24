import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(15),
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
    );
  }
}
