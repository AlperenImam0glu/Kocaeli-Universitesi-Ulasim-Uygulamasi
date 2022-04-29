import 'package:flutter/material.dart';
import 'package:yazlab2_proje2_mobil/admin_pages/admin_page.dart';
import 'package:yazlab2_proje2_mobil/user_pages/user_Home_Page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String username;
  late String password;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Kocaeli Üniversitesi Ulaşım Uygulaması',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 4
                        ..color = Colors.green[700]!,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset('images/kocaeli-universitesi-logo.png', scale: 7),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 100.0,
                    height: 50.0,
                    child: adminEkrani(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget adminEkrani() => RaisedButton(
      child: Text(
        "Giriş",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AdminPage(),
          ),
        );
      });
}
