import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';

Future<Database> getDatabase() async {
  //passando o caminho do db
  final String path = join(await getDatabasesPath(), 'card.db');
  //abrindo o caminho, caso nao exista sera criado
  return openDatabase(path,
      onCreate: (db, version) => db.execute('tabelaSql'), version: 1);
}
