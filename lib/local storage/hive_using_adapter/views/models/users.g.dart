// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UsersAdapter extends TypeAdapter<Users> {
  @override
  final int typeId = 0;

  @override
  Users read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Users(
      name: fields[0] as String,
      email: fields[1] as String,
      Password: fields[2] as String,
    )..id = fields[3] as String?;
  }

  @override
  void write(BinaryWriter writer, Users obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.Password)
      ..writeByte(3)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UsersAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
