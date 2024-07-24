import 'package:flutter/material.dart';
import 'package:ltddnc/components/my_button.dart';
import 'package:ltddnc/pages/user/receipt/receipt_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  void userTappedPay() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Center(
          child: Text(
            'Xác nhận thanh toán',
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontSize: 18,
              fontFamily: 'BeVietnamPro',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        content: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: SingleChildScrollView(
            child: Text(
              'Xác nhận thanh toán đơn hàng của bạn?',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 15,
                fontFamily: 'BeVietnamPro',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'Hủy',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 15,
                      fontFamily: 'BeVietnamPro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReceiptPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Đồng ý',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 15,
                      fontFamily: 'BeVietnamPro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Thanh toán',
          style: TextStyle(
            fontFamily: 'BeVietnamPro',
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(
              opTap: userTappedPay,
              text: 'Thanh toán ngay',
            )
          ],
        ),
      ),
    );
  }
}
