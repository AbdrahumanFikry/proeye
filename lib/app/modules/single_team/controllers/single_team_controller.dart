import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/components/mixins/upload_files_controller_mixin.dart';
import 'package:pro_eye/app/modules/single_team/bindings/single_team_binding.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:proeye_api/api.dart';
import 'package:proeye_api/model/project_team_vm.dart';
import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/req_create_task_vm.dart';

class SingleTeamController extends GetxController
    with ApiMixin, BusyMixin, UploadFilesMixin {
  final SingleTeamInputParams params;

  SingleTeamController(this.params);

  String get projectId => params.projectId;
  String get committeeId => params.committeeId;
  String get teamId => params.teamId;
  ProjectTeamVM get singleTeam => params.singleTeam;
  Future<void> refreshMembers() async {
    try {
      startBusy();
      await params.refreshCommittee();
      endBusySuccess();
    } catch (e) {
      endBusyError(e.toString(), showDialog: true);
    }
  }

  Future<void> addNewTask() async {
    // tasksLoading.value = true;
    // try {
    //   final formData = newTaskFormKey.currentState;
    //   if (formData.validate()) {
    //     formData.save();
    //     List<String> urls = await uploadFilesToServer();
    //     await request(
    //       api
    //           .getCommitteeLeaderApi()
    //           .v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdAddTaskPost(
    //             projectId,
    //             committeeId,
    //             teamId,
    //             reqCreateTaskVM: (ReqCreateTaskVMBuilder()
    //                   ..title = task.text
    //                   ..plannedDurationDays = (pickedEndDate.value
    //                       .difference(pickedStartDate.value)
    //                       .inDays)
    //                   ..plannedStartOffset = (params
    //                       .committee.value.plannedStart
    //                       .difference(pickedStartDate.value)
    //                       .inDays)
    //                   ..addedFiles = ListBuilder<String>(urls))
    //                 .build(),
    //           ),
    //     );
    //     if (params.refreshCommittee != null) await params.refreshCommittee();
    //     task.clear();
    //     moreDetails.clear();
    //     pickedStartDate.value = null;
    //     pickedEndDate.value = null;
    //     filesStateController.value.resetAll();
    //     Get.back();
    //   }
    // } catch (error) {
    //   AppUtil.showAlertDialog(body: error.toString());
    // }
    // tasksLoading.value = false;
  }
}
