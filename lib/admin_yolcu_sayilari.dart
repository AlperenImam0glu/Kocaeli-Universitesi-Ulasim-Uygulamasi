import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:yazlab2_proje2_mobil/Duraklar.dart';

class YolcuSayilari extends StatefulWidget {
  @override
  State<YolcuSayilari> createState() => _YolcuSayilariState();
}

class _YolcuSayilariState extends State<YolcuSayilari> {
  Duraklar izmit = new Duraklar(40.764759, 29.940957);
  Duraklar basiskele = new Duraklar(40.709633, 29.923609);
  Duraklar cayirova = new Duraklar(40.823270, 29.372250);
  Duraklar darica = new Duraklar(40.773861, 29.401166);
  Duraklar derince = new Duraklar(40.755790, 29.831286);

  final duraklistesi = <Duraklar>[];
  _YolcuSayilariState() {
    duraklistesi.add(izmit);
    duraklistesi.add(basiskele);
    duraklistesi.add(cayirova);
    duraklistesi.add(darica);
    duraklistesi.add(derince);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Admin Kontrol Ekranı"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: mapWidget(),
          ),
          Expanded(
            flex: 1,
            child: Text("BURADA İSLEMLER OLACAK"),
          ),
        ],
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
    final markerlar = <Marker>[];
    for (var item in duraklistesi) {
      Marker marker = new Marker(
        width: 45,
        height: 45,
        point: new LatLng(item.lat, item.long),
        builder: (context) => new Container(
          child: IconButton(
              icon: Icon(Icons.add_location_sharp, color: Colors.purple),
              onPressed: () {}),
        ),
      );
      markerlar.add(marker);
    }
    return markerlar;
  }
}
