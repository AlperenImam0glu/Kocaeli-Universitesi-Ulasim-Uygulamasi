import 'package:flutter/material.dart';
import 'package:yazlab2_proje2_mobil/admin_page.dart';
import 'package:yazlab2_proje2_mobil/user_Home_Page.dart';

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
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              Text(
                "KULLANICI",
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              TextFromField_Kullanici(),
              SizedBox(
                height: 20,
              ),
              Text(
                "ŞİFRE",
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              TextFromField_Sifre(),
              SizedBox(
                height: 30,
              ),
              _LoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField TextFromField_Kullanici() {
    return TextFormField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          hintText: "Kullanıcı Adı",
          labelStyle: TextStyle(color: Colors.green),
          border: OutlineInputBorder()),
      validator: (value) {
        if (value!.isEmpty) {
          return "Kullanıcı Adını Giriniz";
        } else {
          return null;
        }
      },
      onSaved: (value) {
        username = value!;
      },
    );
  }

  TextFormField TextFromField_Sifre() {
    return TextFormField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          hintText: "Şifre",
          labelStyle: TextStyle(color: Colors.green),
          border: OutlineInputBorder()),
      validator: (value) {
        if (value!.isEmpty) {
          return "Şifrenizi Giriniz";
        } else {
          return null;
        }
      },
      onSaved: (value) {
        password = value!;
      },
    );
  }

  Widget _LoginButton() => RaisedButton(
      child: Text(
        "Giriş Yap",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();
          debugPrint("username : $username , password : $password");
        }
        if (username == "kullanici" && password == "1234") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserHomePage(
                username: username,
              ),
            ),
          );
        } else if (username == "admin" && password == "admin") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AdminPage(),
            ),
          );
        } else {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Hata"),
                  content: Text("Giriş Bilgileriniz Hatalı"),
                );
              });
        }
      });
}
