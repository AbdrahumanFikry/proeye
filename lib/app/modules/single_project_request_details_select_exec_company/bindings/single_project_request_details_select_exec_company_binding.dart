import 'package:get/get.dart';

import '../controllers/single_project_request_details_select_exec_company_controller.dart';

class SingleProjectRequestDetailsSelectExecCompanyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingleProjectRequestDetailsSelectExecCompanyController>(
      () => SingleProjectRequestDetailsSelectExecCompanyController(),
    );
  }
}
