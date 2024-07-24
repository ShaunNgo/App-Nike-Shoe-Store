import 'package:flutter/material.dart';

class ProductAddTextFlied extends StatelessWidget {
  final TextEditingController controller;
  final String lableText;
  final int maxLine;

  const ProductAddTextFlied({
    super.key,
    required this.controller,
    required this.lableText,
    required this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color:
                  Theme.of(context).colorScheme.inversePrimary.withOpacity(0.1),
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: TextFormField(
          maxLines: maxLine,
          controller: controller,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.background),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.primary),
            ),
            labelText: lableText,
            labelStyle: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontFamily: 'BeVietnamPro'),
          ),
        ),
      ),
    );
  }
}
