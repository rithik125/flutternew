import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //create database
  static Future<sql.Database> openOrcreateDB() async {
    return await sql.openDatabase('ToDo', version: 1,
        onCreate: (database, version) async {
      await createTable(database);
    });
  }

  static Future<void> createTable(sql.Database database) async {
    await database.execute(
        'CREATE TABLE task (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, title TEXT, content TEXT )');
  }

  static Future<int> create(String title, String content) async{
    final db = await SQLHelper.openOrcreateDB();
    var data = {'title':title, 'content':content};
    final id = await db.insert('task',data );
    return id;
  }
}
