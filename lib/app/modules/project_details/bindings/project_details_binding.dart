import 'package:get/get.dart';
import 'package:pro_eye/app/modules/project_details/controllers/project_details_controller.dart';

class ProjectDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectDetailsController>(
      () => ProjectDetailsController(Get.arguments),
    );
  }
}
