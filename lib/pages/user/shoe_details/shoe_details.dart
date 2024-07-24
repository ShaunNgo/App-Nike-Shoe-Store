import 'package:flutter/material.dart';
import 'package:ltddnc/components/my_button.dart';
import 'package:ltddnc/data/models/shoe.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../../../data/models/store.dart';

class ShoeDetails extends StatefulWidget {
  final Shoe shoe;
  final Map<Size, bool> selectedSize = {};
  ShoeDetails({
    super.key,
    required this.shoe,
  }) {
    for (Size size in shoe.availableSize!) {
      selectedSize[size] = false;
    }
  }

  @override
  State<ShoeDetails> createState() => _ShoeDetailsState();
}

class _ShoeDetailsState extends State<ShoeDetails> {
  void addToCart(Shoe shoe, Map<Size, bool> selectedSize) {
    Navigator.pop(context);

    List<Size> currentlySelectedSize = [];
    for (Size size in widget.shoe.availableSize!) {
      if (widget.selectedSize[size] == true) {
        currentlySelectedSize.add(size);
      }
    }
    context.read<Store>().addToCart(shoe, currentlySelectedSize);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(widget.shoe.imagePath!),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.shoe.name!,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'BeVietnamPro',
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      Text(
                        NumberFormat('###,###.### ₫').format(widget.shoe.price),
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'BeVietnamPro',
                          color: Theme.of(context).colorScheme.inverseSurface,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        widget.shoe.description!,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'BeVietnamPro',
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Divider(color: Theme.of(context).colorScheme.primary),
                      Text(
                        'Chọn size',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'BeVietnamPro',
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).colorScheme.primary),
                            borderRadius: BorderRadius.circular(8)),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.only(
                              left: 10, right: 0, top: 5, bottom: 5),
                          itemCount: widget.shoe.availableSize!.length,
                          itemBuilder: (context, index) {
                            Size size = widget.shoe.availableSize![index];

                            return CheckboxListTile(
                              title: Text(
                                size.name,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'BeVietnamPro',
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .inversePrimary),
                              ),
                              value: widget.selectedSize[size],
                              // groupValue: false,
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedSize[size] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                MyButton(
                  opTap: () => addToCart(widget.shoe, widget.selectedSize),
                  text: 'Thêm vào giỏ',
                ),
                const SizedBox(height: 25)
              ],
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
