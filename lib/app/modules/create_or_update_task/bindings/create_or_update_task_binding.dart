import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:proeye_api/model/project_task_vm.dart';

import '../controllers/create_or_update_task_controller.dart';

class CreateOrUpdateTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateOrUpdateTaskController>(
      () => CreateOrUpdateTaskController(Get.arguments),
    );
  }
}
