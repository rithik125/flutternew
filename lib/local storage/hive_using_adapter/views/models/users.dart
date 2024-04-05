import 'package:hive/hive.dart';
part 'users.g.dart';
@HiveType(typeId: 0)
class Users {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String email;
  @HiveField(2)
  final String Password;
  @HiveField(3)
  String? id;

  Users({required this.name,
    required this.email,
    required this.Password}){
    id =DateTime.now().microsecondsSinceEpoch.toString();
  }
}
