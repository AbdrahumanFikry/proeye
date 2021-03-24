import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/appButton.dart';
import 'package:pro_eye/app/components/appDirectionality.dart';
import 'package:pro_eye/app/components/form_fields/themed_files_form_field.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/modules/new_project_request/components/agencyData.dart';
import 'package:pro_eye/app/modules/new_project_request/components/commuicationData.dart';
import 'package:pro_eye/app/modules/new_project_request/components/locationData.dart';
import 'package:pro_eye/app/modules/new_project_request/components/projectData.dart';
import 'package:pro_eye/app/modules/new_project_request/controllers/new_project_request_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class NewProjectRequestView extends GetView<NewProjectRequestController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: GlobalAppBar(
        title: S.of(context).newProjectRequest,
        enableBack: true,
      ),
      body: Form(
        key: controller.newRequestFormKey,
        child: AnimatedListHandler(
          children: [
            ProjectDataBlock(),
            AgencyDataBlock(),
            LocationDataBlock(),
            CommunicationDataBlock(),
            ThemedFilesFormField(
              controller: controller.filesStateController,
              isRequiredNew: true,
              enabled: !controller.isBusy.value,
            ),
            Obx(
              () => controller.isBusy.value
                  ? Loading()
                  : AppButton(
                      title: S.of(context).create,
                      borderRadius: 50.0,
                      color: ColorUtil.primaryColor,
                      width: Get.width,
                      onPressed: controller.newProjectRequest,
                    ),
            ),
            const SizedBox(
              height: 60.0,
            ),
          ],
        ),
      ),
    );
  }
}
