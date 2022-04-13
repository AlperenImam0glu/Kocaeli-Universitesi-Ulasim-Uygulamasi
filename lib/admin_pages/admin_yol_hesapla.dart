import 'dart:ffi';

import 'package:flutter/material.dart';

class AdminYolHesapla extends StatefulWidget {
  @override
  State<AdminYolHesapla> createState() => _AdminYolHesaplaState();
}

class _AdminYolHesaplaState extends State<AdminYolHesapla> {
  double yukseklik = 5;
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
                  durakVeSayi("Basiskele   "),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Çayırova    "),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Darıca        "),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Derince      "),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Dilovası      "),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Gebze        "),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Golcuk       "),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Kandıra      "),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Karamürsel"),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Golcuk       "),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Kartepe      "),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("Korfez        "),
                  SizedBox(
                    height: yukseklik,
                  ),
                  durakVeSayi("İzmit          "),
                  SizedBox(
                    height: yukseklik,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {},
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

  Row durakVeSayi(String durak) {
    return Row(children: <Widget>[
      SizedBox(
        width: 100,
      ),
      Text("$durak"),
      SizedBox(
        width: 50,
      ),
      SizedBox(
        width: 100,
        height: 40,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6))),
            hintText: "0",
          ),
        ),
      ),
    ]);
  }
}
