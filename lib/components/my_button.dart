import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? opTap;
  final String text;

  const MyButton({
    super.key,
    required this.opTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: opTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.inversePrimary,
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 16,
              fontFamily: 'BeVietnamPro',
            ),
          ),
        ),
      ),
    );
  }
}
