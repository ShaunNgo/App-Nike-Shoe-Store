import 'package:flutter/material.dart';

class AdminCart extends StatefulWidget {
  const AdminCart({super.key});

  @override
  State<AdminCart> createState() => _AdminCartState();
}

class _AdminCartState extends State<AdminCart> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Cart'),
      ),
    );
  }
}
