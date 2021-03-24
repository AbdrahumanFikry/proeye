import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/themed_files_form_field.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/components/mixins/upload_files_controller_mixin.dart';
import 'package:pro_eye/app/modules/create_or_update_task/controllers/create_or_update_task_route_parameters.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:proeye_api/model/req_create_task_vm.dart';
import 'package:proeye_api/model/req_update_task_vm.dart';

class CreateOrUpdateTaskController extends GetxController
    with ApiMixin, BusyMixin, UploadFilesMixin {
  final CreateOrUpdateTaskRouteParameters params;
  bool get isUpdate => params.taskId != null && params.taskDetails != null;
  CreateOrUpdateTaskController(this.params);

  final formkey = GlobalKey<FormState>();

  final titleController = TextEditingController();
  final notesController = TextEditingController();
  final startDate = Rx<DateTime>();
  final duration = Rx<Duration>();

  Future<void> confirm() async {
    final formData = formkey.currentState;
    if (formData == null) return;
    if (formData.validate()) {
      formData.save();
      if (isUpdate) {
        await _updateExisting();
      } else {
        await _createNew();
      }
    }
  }

  Future<void> _createNew() async {
    try {
      startBusy();
      final req = ReqCreateTaskVMBuilder();

      final files = await uploadFilesToServer();
      req.addedFiles = ListBuilder<String>(files);
      req.plannedDurationDays = duration.value.inDays;
      req.plannedStartOffset =
          startDate.value.difference(params.committeeStartDate).inDays.abs();
      req.title = titleController.text;
      await request<void>(
        api
            .getCommitteeLeaderApi()
            .v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdAddTaskPost(
              params.projectId,
              params.committeeId,
              params.teamId,
              reqCreateTaskVM: req.build(),
            ),
      );
      Get.back(result: true);
    } catch (e) {
      endBusyError(e);
    }
  }

  Future<void> _updateExisting() async {
    try {
      startBusy();
      final req = ReqUpdateTaskVMBuilder();

      req.plannedDurationDays = duration.value.inDays;
      req.plannedStartOffset =
          startDate.value.difference(params.committeeStartDate).inDays.abs();
      req.title = titleController.text;
      req.notes = notesController.text;

      req.addedFiles = ListBuilder<String>(await uploadFilesToServer());
      req.removedFiles = filesStateController.value.toRemove
          .map((x) => x.relativeUrl)
          .toBuiltList()
          .toBuilder();
      await request<void>(
        api
            .getCommitteeLeaderApi()
            .v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdUpdateTaskPut(
              params.projectId,
              params.committeeId,
              params.teamId,
              params.taskId,
              reqUpdateTaskVM: req.build(),
            ),
      );

      Get.back(result: true);
    } catch (e) {
      endBusyError(e, showDialog: true);
    }
  }

  @override
  void onReady() {
    super.onReady();
    if (isUpdate) {
      titleController.text = params.taskDetails.title;
      notesController.text = params.taskDetails.notes;
      startDate.value = params.taskDetails.plannedStart;
      duration.value = Duration(days: params.taskDetails.plannedDurationDays);
      filesStateController.value =
          FilesState(existingFiles: params.taskDetails.files);
    }
  }
}
