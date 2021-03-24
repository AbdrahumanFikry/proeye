import 'package:flutter/cupertino.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/form_fields/themed_bool_form_field.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/mixins/upload_files_controller_mixin.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';

class AddRoomDialog extends ThemedDialogFormControllerBase
    with UploadFilesMixin {
  final String projectId;
  final titleController = TextEditingController();
  final isPublic = Rx<bool>(true);

  AddRoomDialog(this.projectId);
  @override
  void onConfirm() async {
    try {
      startBusy();
      await request(
        api.getChatApi().v10ApiChatRoomProjectIdCreateOrUpdateChatRoomPut(
              projectId,
              roomId: null,
              imageFullUrl:
                  (await uploadFilesToServer(returnRelative: false)).first,
              isPublic: isPublic.value,
              roomName: titleController.text,
            ),
      );
      endBusySuccess();
      Get.back(result: true);
    } catch (e) {
      endBusyError(e.toString(), showDialog: true);
    }
  }

  Future<bool> show() async {
    return ThemedDialogForm<AddRoomDialog>(
      controller: this,
      title: S.current.addNewRoom,
      childBuilder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ThemedTextFormField(
              title: 'اسم الغرفة',
              controller: controller.titleController,
              validator: QuickTextValidator(),
            ),
            ThemedBoolFormField(
              title: 'حالة الغرفة',
              trueText: 'عامة',
              falseText: 'خاصة',
              isRequired: true,
              controller: controller.isPublic,
            ),
            ThemedFilesFormField(
              title: 'أيقونة الغرفة',
              isMulti: false,
              canDeleteOld: false,
              isRequiredNew: true,
              controller: controller.filesStateController,
            ),
          ],
        );
      },
      hasCancel: true,
    ).showDialog();
  }
}
