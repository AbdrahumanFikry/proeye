import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/modules/single_task/bindings/single_task_binding.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';

class AddCommentDialog extends ThemedDialogFormControllerBase {
  final commentText = TextEditingController();
  final SingleTaskInputParams params;

  AddCommentDialog(this.params);
  @override
  void onConfirm() async {
    try {
      startBusy();
      await request(
        api
            .getProjectApi()
            .v10ApiProjectsIdCommitteeIdTeamIdTaskIdAddCommentPost(
              params.projectId,
              params.committeeId,
              params.teamId,
              params.taskId,
              comment: commentText.text,
            ),
      );
      endBusySuccess();
      Get.back(result: true);
    } catch (e) {
      endBusyError(e.toString());
    }
  }

  Future<bool> show() async {
    return ThemedDialogForm<AddCommentDialog>(
      controller: this,
      childBuilder: (controller) {
        return ThemedTextFormField(
          title: S.current.comment,
          controller: commentText,
          validator: QuickTextValidator(),
        );
      },
      title: S.current.addNewComment,
      hasCancel: true,
    ).showDialog();
  }
}
