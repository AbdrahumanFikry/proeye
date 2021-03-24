import 'package:flutter/material.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/req_committee_vm.dart';

class CreateNewCommitteeDialogController
    extends ThemedDialogFormControllerBase {
  final committeeNameController = TextEditingController();
  final chairmanIdController = TextEditingController();
  final days = Duration(days: 0).obs;
  @override
  void onConfirm() {
    Get.back(result: true);
  }

  static Future<ReqCommitteeVMBuilder> show() async {
    final controller = CreateNewCommitteeDialogController();
    final res = await ThemedDialogForm<CreateNewCommitteeDialogController>(
      controller: controller,
      title: S.current.addNewCommittee,
      hasCancel: true,
      childBuilder: (controller) => Column(
        children: [
          ThemedTextFormField(
            title: S.current.committeeName,
            controller: controller.committeeNameController,
            validator: QuickTextValidator(),
          ),
          ThemedTextFormField(
            title: S.current.chairman,
            validator: QuickTextValidator(isNationalId: true, isRequired: true),
            controller: controller.chairmanIdController,
            keyBoardType: TextInputType.number,
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
    if (res == true) {
      return ReqCommitteeVMBuilder()
        ..committeeDirectorId = controller.chairmanIdController.text
        ..daysCount = controller.days.value.inDays
        ..name = controller.committeeNameController.text;
    }
    return null;
  }
}
