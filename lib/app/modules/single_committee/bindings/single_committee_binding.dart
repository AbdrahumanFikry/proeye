import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:proeye_api/model/complete_project_details_vm.dart';
import '../controllers/single_committee_controller.dart';

class SingleCommitteeRouteParameters {
  final String projectId;
  final String committeeId;
  final Rx<CompleteProjectDetailsVM> projectDetails;

  final Future<void> Function() refreshProjectDetails;

  SingleCommitteeRouteParameters({
    @required this.refreshProjectDetails,
    @required this.projectDetails,
    @required this.projectId,
    @required this.committeeId,
  });
}

class SingleCommitteeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingleCommitteeController>(
        () => SingleCommitteeController(Get.arguments));
  }
}
