import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/components/mixins/upload_files_controller_mixin.dart';
import 'package:pro_eye/app/modules/single_task/bindings/single_task_binding.dart';
import 'package:pro_eye/app/services/user_service.dart';
import 'package:proeye_api/model/project_task_vm.dart';

class SingleTaskController extends GetxController
    with ApiMixin, BusyMixin, UploadFilesMixin {
  final SingleTaskInputParams params;

  String get projectId => params.projectId;
  String get committeeId => params.committeeId;
  String get teamId => params.teamId;
  String get taskId => params.taskId;

  final taskDetails = Rx<ProjectTaskVM>();

  bool get canDoActions =>
      taskDetails.value?.isDone == false &&
      params.committee.value.committeeDirector.id ==
          UserService.to.currentUser.value?.id;

  SingleTaskController(this.params);

  Future<void> getTaskDetails() async {
    try {
      startBusy();
      taskDetails.value = await request<ProjectTaskVM>(
        api.getProjectApi().v10ApiProjectsIdCommitteeCommitteeIdTeamIdTaskIdGet(
              projectId,
              committeeId,
              teamId,
              taskId,
            ),
      );
      endBusySuccess();
    } catch (error) {
      endBusyError(error.toString(), showDialog: true);
    }
  }

  @override
  void onReady() {
    super.onReady();
    getTaskDetails();
  }
}
