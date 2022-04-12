import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:yazlab2_proje2_mobil/Duraklar.dart';

class YolcuSayilari extends StatefulWidget {
  @override
  State<YolcuSayilari> createState() => _YolcuSayilariState();
}

class _YolcuSayilariState extends State<YolcuSayilari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Admin Kontrol Ekranı"),
      ),
      body: Center(
        child: Column(
          children: [Text("Burada yolcu sayıları olacak")],
        ),
      ),
    );
  }
}
