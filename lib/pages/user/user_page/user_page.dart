import 'package:flutter/material.dart';
import '../../../components/my_text_box.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  Future<void> editFiled(String filed) async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Tài Khoản',
          style: TextStyle(
            fontFamily: 'BeVietnamPro',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 50),
          Icon(
            Icons.person,
            size: 72,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          const SizedBox(height: 10),
          Text(
            'hoahuan02@gmail.com',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontFamily: 'BeVietnamPro',
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Thông tin cá nhân',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontFamily: 'BeVietnamPro'),
            ),
          ),
          MyTextBox(
            text: 'hoahuan02@gmail.com',
            sectionName: 'email',
            onPressed: () => editFiled('Email'),
          ),
          MyTextBox(
            text: 'Ngo Hoa Huan',
            sectionName: 'tên tài khoản',
            onPressed: () => editFiled('Tên tài khoản'),
          ),
          MyTextBox(
            text: '*************',
            sectionName: 'mật khẩu',
            onPressed: () => editFiled('Mật khẩu'),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Lịch sử đơn hàng',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontFamily: 'BeVietnamPro'),
            ),
          ),
        ],
      ),
    );
  }
}
