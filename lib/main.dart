import 'package:flutter/material.dart';
import 'package:yazlab2_proje2_mobil/user_Home_Page.dart';
import 'package:yazlab2_proje2_mobil/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        "/user_Home_Page": (context) => UserHomePage(),
      },
    );
  }
}
