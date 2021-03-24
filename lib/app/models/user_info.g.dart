// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserInfoAdapter extends TypeAdapter<UserInfo> {
  @override
  final int typeId = 0;

  @override
  UserInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserInfo()
      ..nameAr = fields[1] as String
      ..phone = fields[2] as String
      ..userRole = fields[3] as UserRolesEnum
      ..claims = (fields[4] as List)?.cast<UserClaim>()
      ..accessToken = fields[5] as String
      ..accessTokenExpireAt = fields[6] as DateTime
      ..refreshToken = fields[7] as String
      ..id = fields[8] as String
      ..photoUrl = fields[9] as String
      ..email = fields[10] as String
      ..address = fields[11] as String
      ..jobDesc = fields[12] as String;
  }

  @override
  void write(BinaryWriter writer, UserInfo obj) {
    writer
      ..writeByte(12)
      ..writeByte(1)
      ..write(obj.nameAr)
      ..writeByte(2)
      ..write(obj.phone)
      ..writeByte(3)
      ..write(obj.userRole)
      ..writeByte(4)
      ..write(obj.claims)
      ..writeByte(5)
      ..write(obj.accessToken)
      ..writeByte(6)
      ..write(obj.accessTokenExpireAt)
      ..writeByte(7)
      ..write(obj.refreshToken)
      ..writeByte(8)
      ..write(obj.id)
      ..writeByte(9)
      ..write(obj.photoUrl)
      ..writeByte(10)
      ..write(obj.email)
      ..writeByte(11)
      ..write(obj.address)
      ..writeByte(12)
      ..write(obj.jobDesc);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
