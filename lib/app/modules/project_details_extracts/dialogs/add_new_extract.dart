import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/form_fields/themed_dialog_form.dart';
import 'package:pro_eye/app/components/mixins/upload_files_controller_mixin.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/project_extract_vm.dart';
import 'package:built_collection/built_collection.dart';

class AddNewExtractDialogController extends ThemedDialogFormControllerBase
    with UploadFilesMixin {
  final String projectId;
  final extractTitle = TextEditingController();
  final extractType = TextEditingController();
  AddNewExtractDialogController._(this.projectId);
  @override
  void onConfirm() async {
    //send request
    try {
      startBusy();
      await request<ProjectExtractVM>(
        api.getExtractsApi().v10ApiProjectsIdExtractsCreateExtractPost(
              projectId,
              title: extractTitle.text,
              type: extractType.text,
              officialRequestFiles:
                  (await prepareFilesToUpload()).toBuiltList(),
            ),
      );
      endBusySuccess();
      Get.back(result: true);
    } catch (error) {
      endBusyError(error.toString());
    }
  }

  static Future<bool> show(String projectId) {
    return ThemedDialogForm<AddNewExtractDialogController>(
      title: S.current.addNewFinancial,
      hasCancel: true,
      controller: AddNewExtractDialogController._(projectId),
      childBuilder: (controller) => Column(
        children: [
          ThemedTextFormField.clean(
            controller: controller.extractTitle,
            hintText: S.current.financialTitle,
            readOnly: false,
            borderRadius: 50.0,
            validator: QuickTextValidator(),
          ),
          ThemedTextFormField.clean(
            controller: controller.extractType,
            hintText: S.current.description,
            readOnly: false,
            borderRadius: 50.0,
            validator: QuickTextValidator(),
          ),
          ThemedFilesFormField(
            controller: controller.filesStateController,
            isRequiredNew: true,
          )
        ],
      ),
    ).showDialog(barrierDismissible: false);
  }
}
