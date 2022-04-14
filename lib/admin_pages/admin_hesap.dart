import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:yazlab2_proje2_mobil/models/Duraklar.dart';

class Hesap extends StatefulWidget {
  var durakVerileri = <double>[];

  Hesap({Key? key, required this.durakVerileri}) : super(key: key);
  @override
  State<Hesap> createState() => _HesapState();
}

class _HesapState extends State<Hesap> {
  Duraklar Basiskele = new Duraklar(40.709633, 29.923609);
  Duraklar Cayirova = new Duraklar(40.823270, 29.372250);
  Duraklar Darica = new Duraklar(40.773861, 29.401166);
  Duraklar Derince = new Duraklar(40.755790, 29.831286);
  Duraklar Dilovasi = new Duraklar(40.785418, 29.541543);
  Duraklar Gebze = new Duraklar(40.802446, 29.439632);
  Duraklar Golcuk = new Duraklar(40.716607, 29.817274);
  Duraklar Kandira = new Duraklar(41.067325, 30.153739);
  Duraklar Karamursel = new Duraklar(40.690930, 29.615780);
  Duraklar Kartepe = new Duraklar(40.752813, 30.023271);
  Duraklar Korfez = new Duraklar(40.760902, 29.786963);
  Duraklar Izmit = new Duraklar(40.764759, 29.940957);

  final duraklistesi = <Duraklar>[];
  veriler() {
    duraklistesi.add(Basiskele);
    duraklistesi.add(Cayirova);
    duraklistesi.add(Darica);
    duraklistesi.add(Derince);
    duraklistesi.add(Dilovasi);
    duraklistesi.add(Gebze);
    duraklistesi.add(Golcuk);
    duraklistesi.add(Kandira);
    duraklistesi.add(Karamursel);
    duraklistesi.add(Kartepe);
    duraklistesi.add(Korfez);
    duraklistesi.add(Izmit);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("YOL HESABI VE HARİTA"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text(widget.durakVerileri.toString()),
              Expanded(
                child: mapWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  FlutterMap mapWidget() {
    return new FlutterMap(
      options: new MapOptions(
        minZoom: 5.0,
        center: new LatLng(40.769320, 29.943776),
      ),
      layers: [
        new TileLayerOptions(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c']),
        new MarkerLayerOptions(
          markers: duraklar(),
        )
      ],
    );
  }

  List<Marker> duraklar() {
    veriler();
    final markerlar = <Marker>[];
    for (int i = 0; i < widget.durakVerileri.length - 1; i++) {
      if (widget.durakVerileri[i] != 0) {
        Marker marker = new Marker(
          width: 45,
          height: 45,
          point: new LatLng(duraklistesi[i].lat, duraklistesi[i].long),
          builder: (context) => new Container(
            child: IconButton(
                icon: Icon(Icons.add_location_sharp, color: Colors.purple),
                onPressed: () {}),
          ),
        );
        markerlar.add(marker);
      }
    }
    Marker marker = new Marker(
      width: 45,
      height: 45,
      point: new LatLng(40.823658, 29.922649),
      builder: (context) => new Container(
        child: IconButton(
            icon: Icon(Icons.add_location_sharp, color: Colors.black),
            onPressed: () {}),
      ),
    );
    markerlar.add(marker);

    return markerlar;
  }
}
