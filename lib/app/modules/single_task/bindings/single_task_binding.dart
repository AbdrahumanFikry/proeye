import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:proeye_api/model/project_committee_vm.dart';

import '../controllers/single_task_controller.dart';

class SingleTaskInputParams {
  final String projectId;
  final String committeeId;
  final String teamId;
  final String taskId;
  final bool isReceiveTask;
  final Future<void> Function() refreshCommittee;

  final Rx<ProjectCommitteeVM> committee;

  SingleTaskInputParams({
    @required this.isReceiveTask,
    @required this.committee,
    @required this.projectId,
    @required this.committeeId,
    @required this.teamId,
    @required this.taskId,
    @required this.refreshCommittee,
  });
}

class SingleTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingleTaskController>(
        () => SingleTaskController(Get.arguments));
  }
}
