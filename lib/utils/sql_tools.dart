import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql_lite;

class SQLTools {
  static Future<void> creaTabella(sql_lite.Database database) async {}

  static Future<sql_lite.Database> db() async {}

  // legge tutti i progetti dal database
  static Future<List<Map<String, dynamic>>> leggiProgetti() async {}

  // creare un progetto
  static Future<int> creaProgetto(String title, String? descrption) async {}

  // modificare un progetto
  static Future<int> modificaProgetto(
      int id, String title, String? descrption) async {}

  // eliminare un progetto
  static Future<void> eliminaProgetto(int id) async {}
}
