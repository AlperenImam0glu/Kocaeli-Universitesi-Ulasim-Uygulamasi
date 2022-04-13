import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:yazlab2_proje2_mobil/models/kullanicilar.dart';

class DbHelper {
  late Database _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await initializeDb();
    }
    return _db;
  }

  Future<Database> initializeDb() async {
    String dbPath = join(await getDatabasesPath(), "etrade.db");
    var eTradeDb = await openDatabase(dbPath, version: 1, onCreate: createDb);
    return eTradeDb;
  }

  void createDb(Database db, int version) async {
    await db.execute(
        "Create table kullanicilar(id integer primarykey,durakId integer,durum integer)");
  }

  Future<List<Kullanici>> getKullanici() async {
    Database db = await this.db;
    var result = await db.query("kullanici");
    return List.generate(result.length, (i) {
      return Kullanici.fromObject(result[i]);
    });
  }

  Future<int> insert(Kullanici kullanici) async {
    Database db = await this.db;
    var result = await db.insert("kullanici", kullanici.toMap());
    return result;
  }

  Future<int> delete(int id) async {
    Database db = await this.db;
    var result = await db.rawDelete("delete from kullanici where id =$id");
    return result;
  }

  Future<int> update(Kullanici kullanici) async {
    Database db = await this.db;
    var result = await db.update("kullanici", kullanici.toMap(),
        where: "id=?", whereArgs: [kullanici.id]);
    return result;
  }
}
