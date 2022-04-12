import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:yazlab2_proje2_mobil/Duraklar.dart';
import 'package:yazlab2_proje2_mobil/Duraklar.dart';
import 'package:yazlab2_proje2_mobil/admin_harita.dart';
import 'package:yazlab2_proje2_mobil/admin_yolcu_sayilari.dart';

class AdminPage extends StatefulWidget {
  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
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
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            FlatButton(
              child: Text(
                'Harita Görüntüle',
                style: TextStyle(fontSize: 20.0),
              ),
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Harita(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 30,
            ),
            FlatButton(
              child: Text(
                'Yolcu Listesi Görüntüle',
                style: TextStyle(fontSize: 20.0),
              ),
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => YolcuSayilari(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
