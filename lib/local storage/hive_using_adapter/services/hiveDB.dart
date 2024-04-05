import 'package:hive/hive.dart';

import '../views/models/users.dart';

class HiveDB{
  // HiveDB.constr();
  // static HiveDB instance = HiveDB.constr();
  // factory HiveDB(){
  //   return instance;
  // }
  static Future<void> addUser(Users user)async{
    final db = await Hive.openBox<Users>("userdata");
    db.put(user.id, user);
  }
  static Future<List<Users>> getalluser() async{
    final db = await Hive.openBox<Users>("userdata");
    return db.values.toList();
  }

}