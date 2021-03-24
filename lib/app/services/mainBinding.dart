import 'package:get/get.dart';
import 'package:pro_eye/app/services/appService.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      AppService(),
    );
  }
}
