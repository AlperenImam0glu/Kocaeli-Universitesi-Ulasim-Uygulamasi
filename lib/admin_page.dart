import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

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
          markers: [
            durakBasiskele(),
            durakCayirova(),
            durakDarica(),
            durakDerince(),
            durakDilovasi(),
            durakGebze(),
            durakGolcuk(),
            durakKandira(),
            durakKaramursel(),
            durakKartepe(),
            durakKorfez(),
            durakIzmit()
          ],
        )
      ],
    );
  }

  Marker durakBasiskele() {
    return new Marker(
      width: 45,
      height: 45,
      point: new LatLng(40.709633, 29.923609),
      builder: (context) => new Container(
        child: IconButton(
            icon: Icon(Icons.add_location_sharp, color: Colors.purple),
            onPressed: () {
              print('Marker tapped!');
            }),
      ),
    );
  }

  Marker durakCayirova() {
    return new Marker(
      width: 45,
      height: 45,
      point: new LatLng(40.823270, 29.372250),
      builder: (context) => new Container(
        child: IconButton(
            icon: Icon(Icons.add_location_sharp, color: Colors.purple),
            onPressed: () {
              print('Marker tapped!');
            }),
      ),
    );
  }

  Marker durakDarica() {
    return new Marker(
      width: 45,
      height: 45,
      point: new LatLng(40.773861, 29.401166),
      builder: (context) => new Container(
        child: IconButton(
            icon: Icon(Icons.add_location_sharp, color: Colors.purple),
            onPressed: () {
              print('Marker tapped!');
            }),
      ),
    );
  }

  Marker durakDerince() {
    return new Marker(
      width: 45,
      height: 45,
      point: new LatLng(40.755790, 29.831286),
      builder: (context) => new Container(
        child: IconButton(
            icon: Icon(Icons.add_location_sharp, color: Colors.purple),
            onPressed: () {
              print('Marker tapped!');
            }),
      ),
    );
  }

  Marker durakDilovasi() {
    return new Marker(
      width: 45,
      height: 45,
      point: new LatLng(40.785418, 29.541543),
      builder: (context) => new Container(
        child: IconButton(
            icon: Icon(Icons.add_location_sharp, color: Colors.purple),
            onPressed: () {
              print('Marker tapped!');
            }),
      ),
    );
  }

  Marker durakGebze() {
    return new Marker(
      width: 45,
      height: 45,
      point: new LatLng(40.802446, 29.439632),
      builder: (context) => new Container(
        child: IconButton(
            icon: Icon(Icons.add_location_sharp, color: Colors.purple),
            onPressed: () {
              print('Marker tapped!');
            }),
      ),
    );
  }

  Marker durakGolcuk() {
    return new Marker(
      width: 45,
      height: 45,
      point: new LatLng(40.716607, 29.817274),
      builder: (context) => new Container(
        child: IconButton(
            icon: Icon(Icons.add_location_sharp, color: Colors.purple),
            onPressed: () {
              print('Marker tapped!');
            }),
      ),
    );
  }

  Marker durakKandira() {
    return new Marker(
      width: 45,
      height: 45,
      point: new LatLng(41.067325, 30.153739),
      builder: (context) => new Container(
        child: IconButton(
            icon: Icon(Icons.add_location_sharp, color: Colors.purple),
            onPressed: () {
              print('Marker tapped!');
            }),
      ),
    );
  }

  Marker durakKaramursel() {
    return new Marker(
      width: 45,
      height: 45,
      point: new LatLng(40.690930, 29.615780),
      builder: (context) => new Container(
        child: IconButton(
            icon: Icon(Icons.add_location_sharp, color: Colors.purple),
            onPressed: () {
              print('Marker tapped!');
            }),
      ),
    );
  }

  Marker durakKartepe() {
    return new Marker(
      width: 45,
      height: 45,
      point: new LatLng(40.752813, 30.023271),
      builder: (context) => new Container(
        child: IconButton(
            icon: Icon(Icons.add_location_sharp, color: Colors.purple),
            onPressed: () {
              print('Marker tapped!');
            }),
      ),
    );
  }

  Marker durakKorfez() {
    return new Marker(
      width: 45,
      height: 45,
      point: new LatLng(40.760902, 29.786963),
      builder: (context) => new Container(
        child: IconButton(
            icon: Icon(Icons.add_location_sharp, color: Colors.purple),
            onPressed: () {
              print('Marker tapped!');
            }),
      ),
    );
  }

  Marker durakIzmit() {
    return new Marker(
      width: 45,
      height: 45,
      point: new LatLng(40.764759, 29.940957),
      builder: (context) => new Container(
        child: IconButton(
            icon: Icon(Icons.add_location_sharp, color: Colors.purple),
            onPressed: () {
              print('Marker tapped!');
            }),
      ),
    );
  }
}
