import 'package:bdaya_repository_pattern/bdaya_repository_pattern.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:pro_eye/app/models/_hive_type_ids.dart';

part 'user_roles.g.dart';

UserRolesEnum roleFromString(String role) {
  return EnumToString.fromString(UserRolesEnum.values, role);
}

String roleToString(UserRolesEnum role, {bool isCamelCase = false}) {
  return EnumToString.convertToString(role, camelCase: isCamelCase);
}

@HiveType(typeId: userRolesEnumTypeId)
enum UserRolesEnum {
  @HiveField(0)
  President,
  @HiveField(1)
  EngManagementDirector,
  @HiveField(2)
  ExecutiveManager,
  @HiveField(3)
  SystemAdmin,
  @HiveField(4)
  NormalUser
}
