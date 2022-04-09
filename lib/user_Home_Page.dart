import 'package:flutter/material.dart';

class UserHomePage extends StatefulWidget {
  final username;

  const UserHomePage({Key? key, this.username}) : super(key: key);

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
            widget.username == null ? "kullanıcı adı hatalı" : widget.username),
      ),
      body: Center(
        child: Text("AnaSayfa"),
      ),
    );
  }
}
