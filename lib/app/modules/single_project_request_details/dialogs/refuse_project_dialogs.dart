import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';

class RefuseProjectDialog extends ThemedDialogFormControllerBase {
  final refuseReason = TextEditingController();
  final String projectId;

  RefuseProjectDialog(this.projectId);
  @override
  void onConfirm() async {
    try {
      startBusy();
      await request(
        api
            .getEngManagementDirectorApi()
            .v10ApiEngManagementDirectorProjectsIdRejectRequestPost(
              projectId,
              reviewNotes: refuseReason.text,
            ),
      );
      endBusySuccess();
      Get.back(result: true);
    } catch (e) {
      endBusyError(e);
    }
  }

  Future<bool> show() async {
    return ThemedDialogForm<RefuseProjectDialog>(
      hasCancel: true,
      childBuilder: (controller) {
        return ThemedTextFormField.clean(
          controller: controller.refuseReason,
          hintText: S.current.enterRejectionReason,
          validator: QuickTextValidator(),
          borderRadius: 50.0,
        );
      },
      controller: this,
      title: 'رفض المشروع',
    ).showDialog();
  }
}
