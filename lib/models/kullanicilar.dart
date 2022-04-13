class Kullanici {
  int? id;
  int? durakId;
  int? durum;

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
    this.id = o["id"];
    this.durakId = o["durakId"];
    this.durum = o["durum"];
  }
}
