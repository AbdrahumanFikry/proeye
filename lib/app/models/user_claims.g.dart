// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_claims.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserClaimAdapter extends TypeAdapter<UserClaim> {
  @override
  final int typeId = 1;

  @override
  UserClaim read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserClaim()
      ..type = fields[0] as String
      ..value = fields[1] as String
      ..valueType = fields[2] as String;
  }

  @override
  void write(BinaryWriter writer, UserClaim obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.value)
      ..writeByte(2)
      ..write(obj.valueType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserClaimAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
