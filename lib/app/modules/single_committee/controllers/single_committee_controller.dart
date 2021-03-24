import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/modules/single_committee/bindings/single_committee_binding.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:proeye_api/model/per_project_user_role_enum.dart';
import 'package:proeye_api/model/project_committee_vm.dart';
import 'package:proeye_api/model/project_team_vm.dart';

class SingleCommitteeController extends GetxController with ApiMixin {
  final SingleCommitteeRouteParameters params;

  String get projectId => params.projectId;
  String get committeeId => params.committeeId;
  final teams = <ProjectTeamVM>[].obs;
  final singleCommitteeLoading = false.obs;
  final currentCommittee = Rx<ProjectCommitteeVM>();

  SingleCommitteeController(this.params);

  bool get committeeLeader => params.projectDetails.value?.userRelations?.any(
        (userRole) => userRole.type == PerProjectUserRoleEnum.committeeLeader,
      );

  Future<DateTime> pickDateTime(BuildContext context) async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year),
      lastDate: DateTime(DateTime.now().year + 30),
      initialDate: DateTime.now(),
    );
    if (date != null)
      return date;
    else
      return null;
  }

  Future<void> fetchSingleCommittee() async {
    singleCommitteeLoading.value = true;
    try {
      currentCommittee.value = await request<ProjectCommitteeVM>(
        api.getProjectApi().v10ApiProjectsIdCommitteeCommitteeIdGet(
              projectId,
              committeeId,
            ),
      );
      teams.assignAll(currentCommittee.value.teams);
    } catch (error) {
      AppUtil.showAlertDialog(body: error.toString());
    }
    singleCommitteeLoading.value = false;
  }

  @override
  void onReady() {
    super.onReady();
    fetchSingleCommittee();
  }
}
