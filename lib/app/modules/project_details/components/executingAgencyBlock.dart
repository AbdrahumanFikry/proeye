import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/multi_data_components_view.dart';
import 'package:pro_eye/app/modules/project_details/controllers/project_details_controller.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/generated/l10n.dart';

class ExecutingAgencyBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final executiveAgency =
        ProjectDetailsController.to?.projectDetails?.value?.projectExecuter;
    if (executiveAgency == null) return SizedBox.shrink();
    return ThemedDataViewer(
      title: S.of(context).executingAgency,
      content: executiveAgency.name,
      selectable: false,
      onTap: () =>
          Get.toNamed(Routes.COMPANY_DETAILS, arguments: executiveAgency),
    );
  }
}
