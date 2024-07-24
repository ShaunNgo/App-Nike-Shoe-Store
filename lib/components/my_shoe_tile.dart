import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../data/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap;
  const ShoeTile({
    super.key,
    required this.shoe,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
      fontFamily: 'BeVietnamPro',
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );
    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inverseSurface,
      fontFamily: 'BeVietnamPro',
      fontSize: 15,
    );
    var myDesTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
      fontFamily: 'BeVietnamPro',
    );
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shoe.name!, style: myPrimaryTextStyle),
                      Text(
                        // '\$' + shoe.price!.toString(),
                        NumberFormat('###,###.### ₫').format(shoe.price),
                        style: mySecondaryTextStyle,
                      ),
                      const SizedBox(height: 10),
                      Text(shoe.description!, style: myDesTextStyle),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(shoe.imagePath!, height: 150),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.primary,
          endIndent: 25,
          indent: 25,
        )
      ],
    );
  }
}
