import 'package:flutter/material.dart';
import 'package:yazlab2_proje2_mobil/data/dbHelper.dart';
import 'package:yazlab2_proje2_mobil/models/kullanicilar.dart';
import 'package:yazlab2_proje2_mobil/kullanici_istek_ekle.dart';

class YolcuSayilari extends StatefulWidget {
  @override
  State<YolcuSayilari> createState() => _YolcuSayilariState();
}

class _YolcuSayilariState extends State<YolcuSayilari> {
  DbHelper dbHelper = DbHelper();
  late List<Kullanici> kullaniciListesi;
  int kullaniciSayac = 0;

  @override
  // ignore: must_call_super
  void initState() {
    setState(() {
      getListe();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Kullanıcı Konumları"),
      ),
      body: buildData(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          goTokullaniciIstek();
        },
        child: Icon(
          Icons.add,
        ),
        tooltip: "yeni ürün ekle",
      ),
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
              child: Text("K"),
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

  void goTokullaniciIstek() async {
    bool? result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => kullaniciIstekEkle()));
    if (result != null) {
      if (result) {
        setState(() {
          getListe();
        });
      }
    }
  }

  void getListe() async {
    var kullaniciFuture = dbHelper.getKullanici();
    kullaniciFuture.then((data) {
      this.kullaniciListesi = data;
      kullaniciSayac = data.length;
    });
  }
}
