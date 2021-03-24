import 'package:get/get.dart';
import 'package:pro_eye/app/modules/rooms/controllers/rooms_controller.dart';

class RoomsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoomsController>(
      () => RoomsController(Get.arguments),
    );
  }
}
