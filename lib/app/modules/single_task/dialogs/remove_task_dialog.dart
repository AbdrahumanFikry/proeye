import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/modules/single_task/bindings/single_task_binding.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class RemoveTaskDialog extends ThemedDialogFormControllerBase {
  final SingleTaskInputParams params;

  RemoveTaskDialog(this.params);
  @override
  void onConfirm() async {
    try {
      startBusy();
      await request(
        api
            .getCommitteeLeaderApi()
            .v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdDeleteTaskDelete(
              params.projectId,
              params.committeeId,
              params.teamId,
              params.taskId,
            ),
      );
      endBusySuccess();
      Get.back(result: true);
    } catch (e) {
      endBusyError(e.toString(), showDialog: true);
    }
  }

  Future<bool> show() async {
    return ThemedDialogForm<RemoveTaskDialog>(
      controller: this,
      title: S.current.alert,
      childBuilder: (controller) {
        return Text(
          'هل انت متأكد من حذف المهمة ؟',
          style: TextStyle(
            color: ColorUtil.errorColor,
          ),
        );
      },
      hasCancel: true,
    ).showDialog();
  }
}
