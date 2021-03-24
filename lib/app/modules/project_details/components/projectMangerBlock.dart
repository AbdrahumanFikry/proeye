import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/multi_data_components_view.dart';
import 'package:pro_eye/app/modules/project_details/controllers/project_details_controller.dart';
import 'package:pro_eye/app/modules/user_profile_view.dart';
import 'package:pro_eye/generated/l10n.dart';

class ProjectManagerBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final projectMangerDetails =
        ProjectDetailsController.to?.projectDetails?.value?.projectManager;
    return ThemedDataViewer(
      title: S.current.projectManager,
      content: projectMangerDetails?.nameAr ?? ' - ',
      selectable: false,
      onTap: projectMangerDetails == null
          ? null
          : () => Get.to(() => UserProfileView(projectMangerDetails)),
    );
  }
}
