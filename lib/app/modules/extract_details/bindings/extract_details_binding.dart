import 'package:get/get.dart';
import 'package:pro_eye/app/modules/extract_details/controllers/extract_details_controller.dart';

class ExtractDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExtractDetailsController>(
      () => ExtractDetailsController(Get.arguments),
    );
  }
}
