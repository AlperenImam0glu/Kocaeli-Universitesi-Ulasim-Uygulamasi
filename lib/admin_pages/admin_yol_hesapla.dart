import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:yazlab2_proje2_mobil/admin_pages/admin_hesap.dart';

class AdminYolHesapla extends StatefulWidget {
  @override
  State<AdminYolHesapla> createState() => _AdminYolHesaplaState();
}

class _AdminYolHesaplaState extends State<AdminYolHesapla> {
  double yukseklik = 5;
  TextEditingController BasiskeleText = TextEditingController(text: '0');
  TextEditingController CayirovaText = TextEditingController(text: '0');
  TextEditingController DaricaText = TextEditingController(text: '0');
  TextEditingController DerinceText = TextEditingController(text: '0');
  TextEditingController DilovasiText = TextEditingController(text: '0');
  TextEditingController GebzeText = TextEditingController(text: '0');
  TextEditingController GolcukText = TextEditingController(text: '0');
  TextEditingController KandiraText = TextEditingController(text: '0');
  TextEditingController KaramurselText = TextEditingController(text: '0');
  TextEditingController KartepeText = TextEditingController(text: '0');
  TextEditingController KorfezText = TextEditingController(text: '0');
  TextEditingController IzmitText = TextEditingController(text: '0');
  TextEditingController YolMaliyetiText = TextEditingController(text: '0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text("Admin Yol Hesaplama"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  durakVeSayi("Başiskele", BasiskeleText),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Çayırova", CayirovaText),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Darıca", DaricaText),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Derince", DerinceText),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Dilovası", DilovasiText),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Gebze", GebzeText),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Gölcük", GolcukText),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Kandıra", KandiraText),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Karamürsel", KaramurselText),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Kartepe", KartepeText),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Korfez", KorfezText),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("İzmit", IzmitText),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Yol maliyeti", YolMaliyetiText),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      var duraklistesi;
                      duraklistesi = listeyeYaz();
                      print("duraklar"+duraklistesi.toString());
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>Hesap(durakVerileri: duraklistesi,),
                        ),
                      );
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    child: Text(
                      "  Yol Hesapla  ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Row durakVeSayi(String durak, TextEditingController text, {double? ucret}) {
    return Row(children: <Widget>[
      SizedBox(
        width: 100,
      ),
      SizedBox(width: 150, child: Text("$durak")),
      SizedBox(
        width: 100,
        height: 40,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6))),
            hintText: "0",
          ),
          controller: text,
        ),
      ),
    ]);
  }

  List listeyeYaz() {
    if (YolMaliyetiText.text == "0") {
      YolMaliyetiText.text = "1";
    }
    var duraklistesi = <double>[];
    duraklistesi.add(double.parse(BasiskeleText.text));
    duraklistesi.add(double.parse(CayirovaText.text));
    duraklistesi.add(double.parse(DaricaText.text));
    duraklistesi.add(double.parse(DerinceText.text));
    duraklistesi.add(double.parse(DilovasiText.text));
    duraklistesi.add(double.parse(GebzeText.text));
    duraklistesi.add(double.parse(GolcukText.text));
    duraklistesi.add(double.parse(KandiraText.text));
    duraklistesi.add(double.parse(KaramurselText.text));
    duraklistesi.add(double.parse(KartepeText.text));
    duraklistesi.add(double.parse(KorfezText.text));
    duraklistesi.add(double.parse(IzmitText.text));
    duraklistesi.add(double.parse(YolMaliyetiText.text));
    return duraklistesi;
  }

  void yolHesapla(List<double> duraklistesi) {
    var duraklar = <int>[];

    for (int i = 0; i < duraklistesi.length; i++) {
      print(duraklistesi[i].toString());
    }
    for (int i = 0; i < duraklistesi.length; i++) {
      if (duraklistesi[i] != 0) {
        duraklar.add(i);
      }
    }
    print(duraklar.toString());
  }
}
