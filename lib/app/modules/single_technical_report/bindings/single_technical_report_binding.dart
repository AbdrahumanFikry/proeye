import 'package:get/get.dart';

import '../controllers/single_technical_report_controller.dart';

class SingleTechnicalReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingleTechnicalReportController>(
      () => SingleTechnicalReportController(Get.arguments),
    );
  }
}
