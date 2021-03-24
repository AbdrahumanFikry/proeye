import 'package:flutter/material.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/req_receive_committee_vm.dart';

class CreateReceiveCommitteeDialog extends ThemedDialogFormControllerBase {
  final leaderId = TextEditingController();
  final startDate = Rx<DateTime>();
  final days = Rx<Duration>();
  final String projectId;

  CreateReceiveCommitteeDialog(this.projectId);
  @override
  Future<void> onConfirm() async {
    try {
      startBusy();

      final req = ReqReceiveCommitteeVMBuilder()
        ..committeeDirectorId = leaderId.text
        ..daysCount = days.value?.inDays
        ..plannedStart = startDate.value;

      await request(
        api
            .getExecutiveManagerApi()
            .v10ApiExecutionManagerProjectsIdCreateOrUpdateReceiveCommitteePost(
              projectId,
              reqReceiveCommitteeVM: req.build(),
            ),
      );
      endBusySuccess();
      Get.back(result: true);
    } catch (error) {
      endBusyError(error.toString(), showDialog: true);
    }
  }

  Future<bool> show() async {
    return await ThemedDialogForm<CreateReceiveCommitteeDialog>(
      controller: this,
      title: S.current.addNewCommittee,
      hasCancel: true,
      childBuilder: (controller) => Column(
        children: [
          ThemedTextFormField(
            title: S.current.chairman,
            validator: QuickTextValidator(isNationalId: true, isRequired: true),
            controller: controller.leaderId,
            keyBoardType: TextInputType.number,
          ),
          ThemedDateSelectorFormField(
            controller: controller.startDate,
            title: S.current.startDate,
            isRequired: true,
          ),
          ThemedDurationSelectorFormField(
            controller: controller.days,
            title: S.current.executiveDuration,
            isRequired: true,
            extraValidator: (val) {
              if (val.inDays == 0) {
                return S.current.inputNull;
              }
              return null;
            },
          ),
        ],
      ),
    ).showDialog();
  }
}
