import 'package:get/get.dart';

import '../controllers/project_details_extracts_controller.dart';

class ProjectDetailsExtractsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectDetailsExtractsController>(
      () => ProjectDetailsExtractsController(Get.arguments),
    );
  }
}
