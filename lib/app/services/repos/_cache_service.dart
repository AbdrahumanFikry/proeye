import 'package:bdaya_repository_pattern/bdaya_repository_pattern.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/models/user_claims.dart';
import 'package:pro_eye/app/models/user_info.dart';
import 'package:pro_eye/app/models/user_roles.dart';
import 'package:pro_eye/app/services/repos/user_repo.dart';

const isDebug = false;
String get baseUrl =>
    isDebug ? 'http://10.0.2.2:5000' : 'https://proeye.azurewebsites.net';

class CacheService extends CacheServiceInterface with GetxServiceMixin {
  static CacheService get to => Get.find();

  UserRepo _userRepo;
  UserRepo get userRepo => _userRepo;

  @override
  Future<void> initRepos() async {
    await (_userRepo = UserRepo()).init();
  }

  @override
  void registerTypeAdapters() {
    Hive.registerAdapter(UserInfoAdapter());
    Hive.registerAdapter(UserClaimAdapter());
    Hive.registerAdapter(UserRolesEnumAdapter());
  }
}
