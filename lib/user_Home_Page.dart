import 'package:flutter/material.dart';

class UserHomePage extends StatefulWidget {
  final username;

  const UserHomePage({Key? key, this.username}) : super(key: key);

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  String _dropdownValue = "Izmit";
  int a = 5;
  List<String> dropDownOptions = [
    "Başiskele",
    "Çayırova",
    "Darıca",
    "Derince",
    "Dilovası",
    "Gebze",
    "Gölcük",
    "Kandıra",
    "Karamürsel",
    "Kartepe",
    "Körfez",
    "Izmit"
  ];
  get border => null;

  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropdownValue = selectedValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
            widget.username == null ? "kullanıcı adı hatalı" : "Kullanıcı"),
      ),
      body: Center(
        child: Column(
          children: [
            
              Expanded(
                flex: 1,
                child: Image.asset(
                  'images/$_dropdownValue.png',
                 // alignment: Alignment.topCenter,
                ),
              ),
            
            SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Durak seçiniz",
                    style: TextStyle(
                        fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  DropdownButton(
                    items: dropDownOptions
                        .map<DropdownMenuItem<String>>((String mascot) {
                      return DropdownMenuItem<String>(
                          child: Text(mascot), value: mascot);
                    }).toList(),
                    value: _dropdownValue,
                    onChanged: dropdownCallback,
                    style: const TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Secilen durak: $_dropdownValue",
                    style: TextStyle(
                        fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  FlatButton(
                    child: Text(
                      'Konum Bildir',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
