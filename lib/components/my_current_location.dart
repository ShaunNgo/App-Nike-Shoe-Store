import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});
  void openLocationSearchBox(BuildContext context) {
    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
      fontFamily: 'BeVietnamPro',
    );
    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
      fontFamily: 'BeVietnamPro',
    );
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Địa chỉ của bạn', style: myPrimaryTextStyle),
        content: TextField(
          decoration: InputDecoration(
              hintText: 'Nhập địa chỉ...', hintStyle: mySecondaryTextStyle),
        ),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Hủy', style: myPrimaryTextStyle),
          ),
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Xác nhận', style: myPrimaryTextStyle),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
      fontFamily: 'BeVietnamPro',
    );
    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
      fontFamily: 'BeVietnamPro',
    );
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Giao hàng ngay', style: mySecondaryTextStyle),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Text('205 Sư Vạn Hạnh', style: myPrimaryTextStyle),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
