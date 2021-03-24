import 'package:get/get.dart';
import 'package:proeye_api/model/execution_company_view_model.dart';
import 'package:proeye_api/model/gov_company_view_model.dart';

import '../controllers/company_details_controller.dart';

class CompanyDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompanyDetailsController>(
      () => CompanyDetailsController(Get.arguments),
    );
  }
}
