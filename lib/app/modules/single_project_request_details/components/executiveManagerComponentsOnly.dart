import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/themed_data_viewer.dart';
import 'package:pro_eye/app/modules/single_project_request_details/controllers/single_project_request_details_controller.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/generated/l10n.dart';

class ExecutiveManagerComponentsOnly
    extends GetView<SingleProjectRequestDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final projectDetails = controller.executiveManagerProjectDetails?.value;
        return Column(
          children: [
            if (projectDetails?.projectExecuterCompany != null)
              ThemedDataViewer(
                title: S.of(context).executingAgency,
                content: projectDetails?.projectExecuterCompany?.name,
                selectable: false,
                onTap: () {
                  Get.toNamed(
                    Routes.COMPANY_DETAILS,
                    arguments: projectDetails?.projectExecuterCompany,
                  );
                },
              ),
            if (projectDetails?.isDirectSelectOfExecuter != null)
              ThemedDataViewer(
                title: S.of(context).publish,
                content: projectDetails.isDirectSelectOfExecuter
                    ? S.of(context).directAttribution
                    : S.of(context).tender,
              ),
          ],
        );
      },
    );
  }
}
