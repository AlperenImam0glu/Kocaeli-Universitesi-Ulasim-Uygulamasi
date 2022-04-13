import 'package:flutter/material.dart';
import 'package:yazlab2_proje2_mobil/data/dbHelper.dart';
import 'package:yazlab2_proje2_mobil/models/kullanicilar.dart';

class kullaniciIstekEkle extends StatefulWidget {
  @override
  State<kullaniciIstekEkle> createState() => _kullaniciIstekEkleState();
}

class _kullaniciIstekEkleState extends State<kullaniciIstekEkle> {
  TextEditingController txtDurakId = TextEditingController();
  TextEditingController txtDurum = TextEditingController();
  var dbHelper = DbHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Urun ekelme sayfasi"),
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            buildDurakId(),
            buildDurum(),
            buildSaveButton(),
          ],
        ),
      ),
    );
  }

  buildDurakId() {
    return TextField(
      decoration: InputDecoration(labelText: "durak id"),
      controller: txtDurakId,
    );
  }

  buildDurum() {
    return TextField(
      decoration: InputDecoration(labelText: "durum"),
      controller: txtDurum,
    );
  }

  buildSaveButton() {
    return FlatButton(
      child: Text("Ekle"),
      color: Colors.green[200],
      onPressed: () {
        addKullaniciIstek();
      },
    );
  }

  void addKullaniciIstek() async {
    var result = await dbHelper.insert(Kullanici(
        durakId: int.parse(txtDurakId.text), durum: int.parse(txtDurum.text)));
    Navigator.pop(context, result);
  }
}
