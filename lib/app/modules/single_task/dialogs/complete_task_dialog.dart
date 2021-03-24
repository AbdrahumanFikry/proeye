import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/modules/single_task/bindings/single_task_binding.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/req_complete_task.dart';

class CompleteTaskDialog extends ThemedDialogFormControllerBase {
  final actualEnd = Rx<DateTime>();
  final warrantyStart = Rx<DateTime>();
  final warrantyDuration = Rx<Duration>();

  final SingleTaskInputParams params;

  CompleteTaskDialog(this.params);
  @override
  void onConfirm() async {
    try {
      startBusy();
      final builder = ReqCompleteTaskBuilder()
        ..actualEnd = actualEnd.value
        ..warrantyDurationDays = warrantyDuration.value?.inDays
        ..warrantyPeriodStart = warrantyStart.value;
      await request(
        api
            .getCommitteeLeaderApi()
            .v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdCompleteTaskPut(
              params.projectId,
              params.committeeId,
              params.teamId,
              params.taskId,
              reqCompleteTask: builder.build(),
            ),
      );
      endBusySuccess();
      Get.back(result: true);
    } catch (e) {
      endBusyError(e.toString());
    }
  }

  Future<bool> show() async {
    return ThemedDialogForm<CompleteTaskDialog>(
      controller: this,
      childBuilder: (controller) {
        return Column(
          children: [
            ThemedDateSelectorFormField(
              title: S.current.actualEndDate,
              controller: actualEnd,
              isRequired: true,
            ),
            if (controller.params.isReceiveTask)
              ThemedDateSelectorFormField(
                title: 'تاريخ بداية الضمان',
                controller: controller.warrantyStart,
              ),
            if (controller.params.isReceiveTask)
              ThemedDurationSelectorFormField(
                controller: controller.warrantyDuration,
                title: 'مدة الضمان',
              ),
          ],
        );
      },
      title: S.current.addNewComment,
      hasCancel: true,
    ).showDialog();
  }
}
