import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ltddnc/auth/login_or_register.dart';
import 'package:ltddnc/components/my_button.dart';
import 'package:ltddnc/components/my_textfiled.dart';

import '../../../data/api/api.dart';
import '../../../data/models/register.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  String gendername = 'None';
  String temp = '';

  Future<String> register() async {
    return await APIRepository().register(Signup(
        accountID: _accountController.text, //hoahuan02@gmail.com
        birthDay: '29/04/2003',
        password: _passwordController.text,
        confirmPassword: _confirmPasswordController.text,
        fullName: _nameController.text,
        phoneNumber: '0934233773',//
        schoolKey: '27',
        schoolYear: '27',
        gender: '1',
        imageUrl: 'https://googleflutter.com/sample_image.jpg',
        numberID: '0902971013')); //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 172, 172, 172)
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/svg/logo_name.svg', width: 300),
                const SizedBox(height: 25),
                Text(
                  'Tạo tài khoản mới!',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontFamily: 'BeVietnamPro'),
                ),
                const SizedBox(height: 25),
                MyTextFiled(
                  controller: _nameController,
                  lableText: 'Tên tài khoản',
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                MyTextFiled(
                  controller: _accountController,
                  lableText: 'Email',
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                MyTextFiled(
                  controller: _passwordController,
                  lableText: 'Mật khẩu',
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                MyTextFiled(
                  controller: _confirmPasswordController,
                  lableText: 'Nhập lại mật khẩu',
                  obscureText: true,
                ),
                const SizedBox(height: 25),
                MyButton(
                  text: 'Đăng ký',
                  opTap: () async {
                    String respone = await register();
                    if (respone == "ok") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginOrRegister()));
                    } else {
                      print(respone);
                    }
                  },
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Đã có tài khoản?',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontFamily: 'BeVietnamPro',
                      ),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Đăng nhập tại đây!',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontFamily: 'BeVietnamPro',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
