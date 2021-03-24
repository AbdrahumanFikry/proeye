import 'package:bdaya_repository_pattern/bdaya_repository_pattern.dart';
import 'package:bdaya_token_auth/bdaya_token_auth.dart';
import 'package:pro_eye/app/models/user_claims.dart';

import '_hive_type_ids.dart';
import 'user_roles.dart';

part 'user_info.g.dart';

@HiveType(typeId: userInfoTypeId)
class UserInfo extends UserTokenBag<String> {
  @HiveField(1)
  String nameAr;

  @HiveField(2)
  String phone;

  @HiveField(3)
  UserRolesEnum userRole;

  @HiveField(4)
  List<UserClaim> claims;

  @HiveField(5)
  @override
  String accessToken;

  @HiveField(6)
  @override
  DateTime accessTokenExpireAt;

  @HiveField(7)
  @override
  String refreshToken;

  @HiveField(8)
  String id;

  @HiveField(9)
  String photoUrl;

  @HiveField(10)
  String email;

  @HiveField(11)
  String address;

  @HiveField(12)
  String jobDesc;
}
