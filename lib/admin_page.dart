import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class AdminPage extends StatefulWidget {
  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Admin Kontrol Ekranı"),
      ),
      body: Stack(
        children: <Widget>[
          new FlutterMap(
            options: new MapOptions(
              minZoom: 10.0,
            ),
            layers: [
              new TileLayerOptions(
                  urlTemplate:
                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: ['a', 'b', 'c']),
            ],
          ),
        ],
      ),
    );
  }
}
