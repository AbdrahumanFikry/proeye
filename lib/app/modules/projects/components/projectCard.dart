import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/components/proccessColors.dart';
import 'package:pro_eye/app/modules/project_details/controllers/project_details_controller.dart';
import 'package:pro_eye/app/modules/projects/components/projectDetail.dart';
import 'package:pro_eye/app/modules/projects/controllers/projects_controller.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/project_abstract_view_model.dart';

class ProjectCard extends GetView<ProjectsController> {
  final ProjectAbstractViewModel project;

  ProjectCard(
    this.project,
  );

  @override
  Widget build(BuildContext context) {
    return GlobalCard(
      isBg: true,
      onTap: () => Get.toNamed(
        Routes.PROJECTS_DETAILS,
        arguments: ProjectDetailsRouteParams(
          projectId: project.projectId,
          projectName: project.projectName,
        ),
      ),
      child: Obx(
        () {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (controller.noFilter || controller.projectNameFilter.value)
                Text(
                  project.projectName,
                  style: TextStyle(
                    color: ColorUtil.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 60.sp,
                  ),
                ),
              if (controller.noFilter || controller.idCodeFilter.value)
                Text(
                  project.projectCode ?? '',
                  style: TextStyle(
                    color: ColorUtil.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 36.sp,
                  ),
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                textDirection:
                    AppUtil.isLtr ? TextDirection.ltr : TextDirection.rtl,
                children: [
                  if (controller.noFilter || controller.ownerSideFilter.value)
                    ProjectDetail(
                      title: S.of(context).ownerSide,
                      content: project.ownerCompanyName,
                    ),
                  if (controller.noFilter ||
                      controller.executingAgencyFilter.value)
                    ProjectDetail(
                      title: S.of(context).executingAgency,
                      content: project.executerCompanyName,
                    ),
                  if (controller.noFilter ||
                      controller.executingPositionFilter.value)
                    ProjectDetail(
                      title: S.of(context).executivePosition,
                      content: project.actualEnd != null
                          ? S.current.finished
                          : S.current.active,
                      width: Get.width * 0.75,
                    ),
                ],
              ),
              if (controller.noFilter || controller.colorMapFilter.value)
                ProcessColors(
                  project.taskDangerZones.toList(),
                  style: NeumorphicStyle(
                    color: Colors.transparent,
                    depth: 0,
                  ),
                  margins: EdgeInsets.zero,
                ),
            ],
          );
        },
      ),
    );
  }
}
