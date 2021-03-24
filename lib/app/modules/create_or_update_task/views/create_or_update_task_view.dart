import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pro_eye/app/components/appButton.dart';
import 'package:pro_eye/app/components/appDirectionality.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

import '../controllers/create_or_update_task_controller.dart';

class CreateOrUpdateTaskView extends GetView<CreateOrUpdateTaskController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: GlobalAppBar(
        title: controller.isUpdate
            ? S.current.updateMission
            : S.current.addNewMission,
        enableBack: true,
      ),
      body: Form(
        key: controller.formkey,
        child: ListView(
          children: [
            ThemedTextFormField(
              title: S.current.title,
              controller: controller.titleController,
            ),
            if (controller.isUpdate)
              ThemedTextFormField(
                title: S.current.notes,
                controller: controller.notesController,
              ),
            ThemedDateSelectorFormField(
              title: S.current.startDate,
              isRequired: true,
              controller: controller.startDate,
            ),
            ThemedDurationSelectorFormField(
              title: S.current.executiveDuration,
              controller: controller.duration,
              isRequired: true,
            ),
            ThemedFilesFormField(
              canDeleteOld: true,
              controller: controller.filesStateController,
            ),
            Obx(
              () => (controller.isBusy.value)
                  ? Loading()
                  : AppButton(
                      color: ColorUtil.primaryColor,
                      title: 'تأكيد',
                      onPressed: controller.confirm,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
