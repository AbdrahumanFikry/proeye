import 'package:get/get.dart';
import 'package:pro_eye/app/modules/projects_requests/controllers/projects_requests_controller.dart';

class ProjectsRequestsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectsRequestsController>(
      () => ProjectsRequestsController(),
    );
  }
}
