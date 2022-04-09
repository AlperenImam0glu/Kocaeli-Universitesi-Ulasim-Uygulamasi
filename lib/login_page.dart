import 'package:flutter/material.dart';

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
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/kocaeli-universitesi-logo.png', scale: 5),
              SizedBox(
                height: 20,
              ),
              Text(
                "Kullanıcı Adı",
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
                "Şifre",
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
        if (username == "a") {
          Navigator.pushNamed(context, "/user_Home_Page");
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
