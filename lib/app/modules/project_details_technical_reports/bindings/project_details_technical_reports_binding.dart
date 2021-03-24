import 'package:get/get.dart';

import '../controllers/project_details_technical_reports_controller.dart';

class ProjectDetailsTechnicalReportsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectDetailsTechnicalReportsController>(
      () => ProjectDetailsTechnicalReportsController(Get.arguments),
    );
  }
}
