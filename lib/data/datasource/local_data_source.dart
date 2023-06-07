import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

class DatabaseProvider {
  static final databaseProvider = Provider<Future<Database>>((ref) async {
    final databasePath = await getDatabasesPath();
    final dbPath = path.join(databasePath, 'items.db');
    return openDatabase(
      dbPath,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE items(id INTEGER PRIMARY KEY, name TEXT)',
        );
      },
    );
  });
}
