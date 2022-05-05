import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql_lite;
import 'package:path/path.dart';

class SQLTools {
  // questa funzione esegue una query che crea una tabella (verrà eseguito solo la prima volta)
  static Future<void> creaTabella(sql_lite.Database database) async {
    final sqlQuery = """CREATE TABLE progetti(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        titolo TEXT,
        descrizione TEXT,
        creato_a TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )
    """;
    await database.execute(sqlQuery);
  }

  // questa funzione si connette ad un database e ce lo restituisce
  static Future<sql_lite.Database> connetti() async {
    return sql_lite.openDatabase(
      join(await sql_lite.getDatabasesPath(), 'database_progetti.db'),
      version: 1,
      onCreate: (sql_lite.Database database, int version) async {
        creaTabella(database);
      },
    );
  }

  // legge tutti i progetti dal database
  static Future<List<Map<String, dynamic>>> leggiProgetti() async {
    final database = await SQLTools.connetti();
    return database.query("progetti", orderBy: "id");
  }

  // creare un progetto
  static Future<int> creaProgetto(String title, String? descrption) async {}

  // modificare un progetto
  static Future<int> modificaProgetto(
      int id, String titolo, String? descrizione) async {
    // Get a reference to the database.
    final database = await SQLTools.connetti();
    final nuovoProgetto = {
      'titolo':titolo,
      'descrizione':descrizione,
      'creato_a':DateTime.now().toString()

    }
    // Update the given Dog.
    final risultato = await database.update(
      'dogs',
      nuovoProgetto,
      // Ensure that the Dog has a matching id.
      where: 'id = ?',
      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );
    return risultato;
  }

  // eliminare un progetto
  static Future<void> eliminaProgetto(int id) async {}
}
