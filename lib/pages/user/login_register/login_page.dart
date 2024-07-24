import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ltddnc/components/my_button.dart';
import 'package:ltddnc/components/my_textfiled.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../data/api/api.dart';
import '../../admin/admin_home_page.dart';
import '../home_page.dart';
import '../../../data/api/sharepre.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({
    super.key,
    required this.onTap,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  login() async {
    //lấy token (lưu share_preference)
    String token = await APIRepository()
        .login(_emailController.text, _passwordController.text);
    var user = await APIRepository().current(token);
    // save share
    saveUser(user);
    //chuyển đến home page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
    return token;
  }

  @override
  void initState() {
    super.initState();
    // autoLogin();
  }

  autoLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString('user') != null) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
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
                const SizedBox(height: 60),
                //logo
                SvgPicture.asset('assets/svg/logo_name.svg', width: 300),
                const SizedBox(height: 25),
                Text(
                  'Just Do It',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontFamily: 'BeVietnamPro'),
                ),
                const SizedBox(height: 25),
                MyTextFiled(
                  controller: _emailController,
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
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          'Quên mật khẩu?',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              fontFamily: 'BeVietnamPro'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                MyButton(
                  text: 'Đăng nhập',
                  opTap: login,
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Chưa có tài khoản?',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontFamily: 'BeVietnamPro',
                      ),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Đăng ký ngay!',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontFamily: 'BeVietnamPro',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                IconButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AdminHomePage(),
                    ),
                  ),
                  icon: Icon(
                    Icons.admin_panel_settings,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    size: 50,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
