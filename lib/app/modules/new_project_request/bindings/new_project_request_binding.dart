import 'package:get/get.dart';
import 'package:pro_eye/app/modules/new_project_request/controllers/new_project_request_controller.dart';

class NewProjectRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewProjectRequestController>(
      () => NewProjectRequestController(),
    );
  }
}
