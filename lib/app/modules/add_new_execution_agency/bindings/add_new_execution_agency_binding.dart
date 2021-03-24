import 'package:get/get.dart';

import '../controllers/add_new_execution_agency_controller.dart';

class AddNewExecutionAgencyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewExecutionAgencyController());
  }
}
