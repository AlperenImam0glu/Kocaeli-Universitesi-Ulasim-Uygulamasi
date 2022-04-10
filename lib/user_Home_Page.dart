import 'package:flutter/material.dart';

class UserHomePage extends StatefulWidget {
  final username;

  const UserHomePage({Key? key, this.username}) : super(key: key);

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  String _dropdownValue = "Izmit";
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
        title: Text(
            widget.username == null ? "kullanıcı adı hatalı" : widget.username),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
            ),
            Text("Durak Seciniz"),
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
            Text("Secilen durak: $_dropdownValue"),
          ],
        ),
      ),
    );
  }
}
