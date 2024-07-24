import 'package:flutter/material.dart';
import 'package:ltddnc/data/models/shoe.dart';

class QuanitySelector extends StatelessWidget {
  final int quantity;
  final Shoe shoe;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const QuanitySelector({
    super.key,
    required this.quantity,
    required this.shoe,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          GestureDetector(
            onTap: onDecrement,
            child: Icon(
              Icons.remove_circle_outline_rounded,
              size: 23,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              width: 20,
              child: Center(
                child: Text(
                  quantity.toString(),
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontFamily: 'BeVietnamPro'
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: onIncrement,
            child: Icon(
              Icons.add_circle_outline_rounded,
              size: 23,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
