import 'package:bdaya_repository_pattern/bdaya_repository_pattern.dart';
import 'package:pro_eye/app/models/_hive_type_ids.dart';

part 'user_claims.g.dart';

@HiveType(typeId: userClaimTypeId)
class UserClaim extends GuidHiveObject {
  @HiveField(0)
  String type;
  @HiveField(1)
  String value;
  @HiveField(2)
  String valueType;
}
