import 'package:get/get.dart';
import 'package:pro_eye/app/modules/single_project_request_details/controllers/single_project_request_details_controller.dart';

class SingleProjectRequestDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingleProjectRequestDetailsController>(
      () => SingleProjectRequestDetailsController(Get.arguments),
    );
  }
}
