// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_roles.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserRolesEnumAdapter extends TypeAdapter<UserRolesEnum> {
  @override
  final int typeId = 2;

  @override
  UserRolesEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return UserRolesEnum.President;
      case 1:
        return UserRolesEnum.EngManagementDirector;
      case 2:
        return UserRolesEnum.ExecutiveManager;
      case 3:
        return UserRolesEnum.SystemAdmin;
      case 4:
        return UserRolesEnum.NormalUser;
      default:
        return null;
    }
  }

  @override
  void write(BinaryWriter writer, UserRolesEnum obj) {
    switch (obj) {
      case UserRolesEnum.President:
        writer.writeByte(0);
        break;
      case UserRolesEnum.EngManagementDirector:
        writer.writeByte(1);
        break;
      case UserRolesEnum.ExecutiveManager:
        writer.writeByte(2);
        break;
      case UserRolesEnum.SystemAdmin:
        writer.writeByte(3);
        break;
      case UserRolesEnum.NormalUser:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserRolesEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
