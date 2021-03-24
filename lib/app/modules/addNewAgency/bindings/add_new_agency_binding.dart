import 'package:get/get.dart';

import '../controllers/add_new_agency_controller.dart';

class AddNewAgencyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddNewAgencyController>(
      () => AddNewAgencyController(),
    );
  }
}
