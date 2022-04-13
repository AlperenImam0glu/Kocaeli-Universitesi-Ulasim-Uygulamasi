import 'package:flutter/material.dart';

class AdminYolHesapla extends StatefulWidget {
  @override
  State<AdminYolHesapla> createState() => _AdminYolHesaplaState();
}

class _AdminYolHesaplaState extends State<AdminYolHesapla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Admin Yol Hesaplama"),
      ),
      body: Center(),
    );
  }
}
