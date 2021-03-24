import 'package:get/get.dart';

import '../controllers/new_project_request_select_gov_company_controller.dart';

class NewProjectRequestSelectGovCompanyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewProjectRequestSelectGovCompanyController>(
      () => NewProjectRequestSelectGovCompanyController(),
    );
  }
}
