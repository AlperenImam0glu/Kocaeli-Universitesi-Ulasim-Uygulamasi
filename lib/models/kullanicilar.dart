class Kullanici {
  late int id;
  late int durakId;
  late int durum;

  Kullanici({required this.durakId, required this.durum});
  Kullanici.withId(
      {required this.id, required this.durakId, required this.durum});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["durakId"] = durakId;
    map["durum"] = durum;
    if (id != null) {
      map["id"] = id;
    }
    return map;
  }

  Kullanici.fromObject(dynamic o) {
    this.id = int.parse(o["id"].toString());
    this.durakId = int.parse(o["durakId"].toString());
    this.durum = int.parse(o["durum"].toString());
  }
}
