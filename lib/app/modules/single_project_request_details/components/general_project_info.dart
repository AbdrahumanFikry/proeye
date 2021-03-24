import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/themed_header_children.dart';
import 'package:pro_eye/app/models/user_roles.dart';
import 'package:pro_eye/app/modules/single_project_request_details/controllers/single_project_request_details_controller.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/generated/l10n.dart';

import 'executiveManagerComponentsOnly.dart';

class GeneralProjectInfo
    extends GetView<SingleProjectRequestDetailsController> {
  @override
  Widget build(BuildContext context) {
    return ThemedHeaderChildren(
      title: 'بيانات المشروع',
      child: Obx(
        () {
          final executiveManagerProjectDetails =
              controller.executiveManagerProjectDetails?.value;
          final engManagementDirectorProjectDetails =
              controller.engManagementDirectorProjectDetails?.value;
          final userRole = controller.userRole;

          final ownerCompany = userRole == UserRolesEnum.ExecutiveManager
              ? executiveManagerProjectDetails?.ownerCompany
              : engManagementDirectorProjectDetails?.ownerCompany;

          final projectName = userRole == UserRolesEnum.ExecutiveManager
              ? executiveManagerProjectDetails?.projectName
              : engManagementDirectorProjectDetails?.projectName;
          final notes = userRole == UserRolesEnum.ExecutiveManager
              ? executiveManagerProjectDetails?.notes
              : engManagementDirectorProjectDetails?.notes;
          return Column(
            children: [
              ThemedDataViewer(
                title: S.current.projectName,
                content: projectName,
              ),
              ThemedDataViewer(
                title: S.current.ownerSide,
                content: ownerCompany?.name,
                selectable: false,
                onTap: () {
                  Get.toNamed(
                    Routes.COMPANY_DETAILS,
                    arguments: ownerCompany,
                  );
                },
              ),
              ThemedDataViewer(
                title: 'تاريخ تقديم الطلب',
                content: (userRole == UserRolesEnum.ExecutiveManager
                        ? executiveManagerProjectDetails?.creationDate
                        : engManagementDirectorProjectDetails?.creationDate)
                    ?.toShortUserString(),
              ),
              ThemedDataViewer(
                title: S.current.projectDescription,
                content: userRole == UserRolesEnum.ExecutiveManager
                    ? executiveManagerProjectDetails?.projectDesc
                    : engManagementDirectorProjectDetails?.projectDesc,
                alignment: TextAlign.start,
              ),
              ThemedDataViewer(
                title: S.current.notes,
                content: notes,
                alignment: TextAlign.start,
              ),
              if (userRole == UserRolesEnum.ExecutiveManager)
                ExecutiveManagerComponentsOnly(),
            ],
          );
        },
      ),
    );
  }
}
