import 'package:exam_af/app/views/homepage/model/model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  DBHelper._();

  static final DBHelper dbHelper = DBHelper._();

  static Database? database;

  //TODO:table componennts
  static String table_name = 'aution';
  static String id = 'id';
  static String name = 'name';
  static String price = 'price';
  static String category = 'category';

  static initDB() async {
    String path = await getDatabasesPath();
    String db_path = join(path, 'demo.db');

    database = await openDatabase(
      db_path,
      version: 1,
      onCreate: (db, version) {
        String query =
            "CREATE TABLE IF NOT EXISTS $table_name($id INTEGER PRIMARY KEY AUTOINCREMENT,$name TEXT,$category TEXT,$price TEXT);";
        db.execute(query);
      },
    );
  }

  static Future<int?> insertProduct({required Auction m_quote}) async {
    await initDB();
    String query =
        "INSERT INTO $table_name($name,$category,$price) VALUES(?,?);";
    List args = [m_quote.name, m_quote.category, m_quote.price];
    int? res = await database?.rawInsert(query, args);
    return res;
  }

  static  Future<List<Auction>?> fetchQuote() async {
    await initDB();
    String query = "SELECT * FROM $table_name;";
    var list = await database?.rawQuery(query);
    List<Auction>? todo = list?.map((e) => Auction.fromdb(data: e)).toList();
    return todo;
  }

  static Future<void> deleteStudentData(int dId) async {
    database = await initDB();

    String sql = 'DELETE FROM Student WHERE $id=?';

    List args = [dId];

    await database!.rawDelete(sql, args).then((value) {
      Get.snackbar('Delete', 'Student Data Deleted',
          backgroundColor: Colors.red.shade200.withOpacity(0.5),
          snackPosition: SnackPosition.BOTTOM);
    });
  }
}
