import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qrreader/src/models/scan_model.dart';
import 'package:sqflite/sqflite.dart';


class DBProvider{
  static Database _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();
  
  Future<Database> get database async {
    if(database!=null){
      return _database;
    }else{
      _database = await initDB();
      return _database;
    }
  }

  initDB() async {
    Directory documentsDirectoy = await getApplicationDocumentsDirectory();

    final path = join(documentsDirectoy.path,'ScansDB.db');

    return await openDatabase(
      path,
      version: 1,
      onOpen: (db){},
      onCreate: (Database db, int version)async{
        await db.execute(
          'CREATE TABLE Scans('
          ' id INTEGER PRIMARY KEY,'
          ' tipo TEXT,'
          ' valor TEXT'
          ')'
        );
      },
    );
  }

  //crear Registros.
  nuevoScanRaw(ScanModel nuevoScan) async {
    final db = await database;
    final res = await db.rawInsert(
      "INSERT Into Scans (id, tipo, valor) "
      "VALUES ( ${ nuevoScan.id }, '${nuevoScan.tipo}', '${nuevoScan.valor}')"
    );
    return res;

  }
  //Esta es mas segura y corta.
  nuevoScan(ScanModel nuevoScan) async {
    final db = await database;
    final res = await db.insert('Scans', nuevoScan.toJson());
    return res;
  }

  //SELECT - Obtener informacion
  Future<ScanModel> getScanId(int id) async {
    final db = await database;
    final res = await db.query('Scans',where: 'id = ?', whereArgs:[id]);
    return res.isNotEmpty ? ScanModel.fromJson(res.first) : null;
  }

  Future<List<ScanModel>> getTodosScans() async {

    final db  = await database;
    final res = await db.query('Scans');

    List<ScanModel> list = res.isNotEmpty ? res.map( (c) => ScanModel.fromJson(c) ).toList() : [];
    return list;
  }
  
  Future<List<ScanModel>> getScansPorTipos(String tipo ) async {

    final db  = await database;
    final res = await db.rawQuery("SELECT * FROM Scans WHERE tipo='$tipo'");

    List<ScanModel> list = res.isNotEmpty ? res.map( (c) => ScanModel.fromJson(c) ).toList() : [];
    return list;
  }
  

  //Actualizar registros
  Future<int> updateScan(ScanModel nuevoScan) async {
    final db = await database;
    final res = await db.update('Scans', nuevoScan.toJson(), where: 'id = ?', whereArgs: [nuevoScan.id]);
    return res;
  }

  //Borrar registros
  Future<int> deleteScan(int id) async {
    final db = await database;
    final res = await db.delete('Scans', where:'id = ?', whereArgs: [id]);
    return res;
  }

  Future<int> deleteAll(int id) async {
    final db = await database;
    final res = await db.rawDelete('DELETE FROM Scans');
    return res;
  }


}