import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Admin Kontrol Ekranı"),
      ),
      body: Center(
        child: Text("AnaSayfa"),
      ),
    );
  }
}
