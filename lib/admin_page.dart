import 'package:flutter/material.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Harita(),
                  ),
                );
              },
              icon: const Icon(
                Icons.map,
                color: Colors.black,
              ),
              label: const Text(
                'Haritayı Göster',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => YolcuSayilari(),
                  ),
                );
              },
              icon: const Icon(
                Icons.room_rounded,
                color: Colors.black,
              ),
              label: const Text(
                'Kullanıcı Konumları',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => YolcuSayilari(),
                  ),
                );
              },
              icon: const Icon(
                Icons.calculate_outlined,
                color: Colors.black,
              ),
              label: const Text(
                'Yol Oluştur',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
