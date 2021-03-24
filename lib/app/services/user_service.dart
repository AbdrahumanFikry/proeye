import 'package:bdaya_fcm_handler/bdaya_fcm_handler.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/models/user_info.dart';
import 'package:pro_eye/app/services/repos/_cache_service.dart';
import 'package:proeye_api/api.dart';

class UserService extends GetxService {
  final currentUser = Rx<UserInfo>();
  final currentFCMToken = RxString();
  static UserService get to => Get.find();

  @override
  void onReady() {
    super.onReady();

    CacheService.to.userRepo.firstEntryStream().listen((event) async {
      if (event == null) {
        currentUser.nil();
      } else {
        currentUser.value = event.value;
        final token =
            currentFCMToken.value = await fcmServiceFinder()?.getToken(
          vapidKey:
              "BKQiIX_RGei_dhQ6PzZliv9Zoni_RGtjbzF2IR3iygSO87WLMmD62mHy8wxNtwGWej7wl_QKd3-UH_L6AfuVQtE",
        );
        try {
          await Get.find<ProeyeApi>()
              .getFcmApi()
              .v10ApiFCMAssignTokenPost(token: token);
        } catch (e) {
          printError(info: e.toString());
        }
      }
    });
  }
}
