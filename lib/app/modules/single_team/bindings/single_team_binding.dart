import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:proeye_api/model/project_committee_vm.dart';
import 'package:proeye_api/model/project_team_vm.dart';

import '../controllers/single_team_controller.dart';

class SingleTeamInputParams {
  final String projectId;
  final String committeeId;
  final String teamId;

  final bool isCommitteeLeader;

  final Future<void> Function() refreshCommittee;
  final Rx<ProjectCommitteeVM> committee;

  ProjectTeamVM get singleTeam =>
      committee.value?.teams?.firstWhere((x) => x.teamId == teamId);

  SingleTeamInputParams({
    @required this.isCommitteeLeader,
    @required this.committee,
    @required this.refreshCommittee,
    @required this.projectId,
    @required this.committeeId,
    @required this.teamId,
  });
}

class SingleTeamBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingleTeamController>(
        () => SingleTeamController(Get.arguments));
  }
}
