import 'package:flutter/material.dart';
import 'package:yazlab2_proje2_mobil/data/dbHelper.dart';
import 'package:yazlab2_proje2_mobil/models/kullanicilar.dart';

class YolcuSayilari extends StatefulWidget {
  @override
  State<YolcuSayilari> createState() => _YolcuSayilariState();
}

class _YolcuSayilariState extends State<YolcuSayilari> {
  DbHelper dbHelper = DbHelper();
  late List<Kullanici> kullaniciListesi;
  int kullaniciSayac = 0;

  @override
  void initState() {
    var kullaniciFuture = dbHelper.getKullanici();
    kullaniciFuture.then((data) {
      this.kullaniciListesi = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Kullanıcı İstekleri"),
      ),
      body: buildData(),
    );
  }

  ListView buildData() {
    return ListView.builder(
      itemCount: kullaniciSayac,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.green,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black12,
              child: Text("P"),
            ),
            title: Text(
              this.kullaniciListesi[position].durakId.toString(),
            ),
            subtitle: Text(
              this.kullaniciListesi[position].durakId.toString(),
            ),
            onTap: () {},
          ),
        );
      },
    );
  }
}
