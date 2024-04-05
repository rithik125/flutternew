import 'package:sqflite/sqflite.dart'as sql;

class SQLhelper{
  /// create database
  static Future<sql.Database> openOrcreateDB() async{
    return await sql.openDatabase('todo',version: 1,onCreate:(databate,version) async{
      await createTable(databate);
    });
  }

  static Future<void> createTable(sql.Database database) async{
    await database.execute(
        'CREATE TABLE task (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, title TEXT, content TEXT)');
  }


  static Future<int> create(String title, String content) async{
    final db = await SQLhelper.openOrcreateDB();
    var date ={'title':title,'content':content};
    final id = await db.insert('task', date);
    return id;
  }
  static Future<List<Map<String,dynamic>>> readTask() async{
    final db =await SQLhelper.openOrcreateDB(); //to open database
    return db.query('task',orderBy: 'id');
  }
}