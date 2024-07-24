import 'package:flutter/material.dart';
import 'package:ltddnc/components/my_button.dart';
import 'package:ltddnc/pages/user/home_page.dart';

import '../../../components/my_receipt.dart';

class ReceiptPage extends StatelessWidget {
  const ReceiptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Thông tin đơn hàng',
          style: TextStyle(
            fontFamily: 'BeVietnamPro',
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          const Expanded(
            child: MyReceipt(),
          ),
          const SizedBox(height: 25),
          Divider(
              height: 1,
              endIndent: 25,
              indent: 25,
              color: Theme.of(context).colorScheme.primary),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0, top: 25),
            child: MyButton(
              opTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              ),
              text: 'Về trang chủ',
            ),
          ),
        ],
      ),
    );
  }
}
