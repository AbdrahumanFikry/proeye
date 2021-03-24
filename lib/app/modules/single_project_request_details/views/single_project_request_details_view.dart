import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/appButton.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/models/user_roles.dart';
import 'package:pro_eye/app/modules/single_project_request_details/components/executingAgencyBlock.dart';
import 'package:pro_eye/app/modules/single_project_request_details/components/general_project_info.dart';
import 'package:pro_eye/app/modules/single_project_request_details/components/projectDescription.dart';
import 'package:pro_eye/app/modules/single_project_request_details/components/publishBlock.dart';
import 'package:pro_eye/app/modules/single_project_request_details/components/sidePresenterDetails.dart';
import 'package:pro_eye/app/modules/single_project_request_details/controllers/single_project_request_details_controller.dart';
import 'package:pro_eye/app/modules/single_project_request_details/dialogs/refuse_project_dialogs.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class SingleProjectRequestDetailsView
    extends GetView<SingleProjectRequestDetailsController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: GlobalAppBar(
        title: S.current.projectRequestDetails,
        enableBack: true,
      ),
      body: Obx(
        () {
          final userRole = controller.userRole;
          var child = AnimatedListHandler(
            refreshIndicatorKey: controller.refreshKey,
            onRefresh: controller.fetchProjectDetails,
            children: controller.executiveManagerProjectDetails.value == null &&
                    controller.engManagementDirectorProjectDetails.value == null
                ? <Widget>[]
                : <Widget>[
                    GeneralProjectInfo(),
                    SidePresenterData(),
                    if (userRole == UserRolesEnum.ExecutiveManager) ...[
                      //ExecutiveManagerComponentsOnly(),
                      ProjectDetails(),
                    ],
                    if (userRole == UserRolesEnum.EngManagementDirector) ...[
                      PublishBlock(),
                      ExecutingAgencyBlock(),
                    ],
                    ThemedFilesFormField(
                      controller: controller.filesStateController,
                      isRequiredAny: true,
                    ),
                    Obx(
                      () => controller.isBusy.value
                          ? Loading()
                          : Row(
                              children: [
                                if (userRole ==
                                    UserRolesEnum.EngManagementDirector)
                                  Expanded(
                                    child: AppButton(
                                      title: S.current.deny,
                                      borderRadius: 50.0,
                                      color: ColorUtil.errorColor,
                                      textColor: Colors.white,
                                      width: Get.width,
                                      onPressed: () async {
                                        if (await RefuseProjectDialog(controller
                                                .projectNameId.projectId)
                                            .show()) {
                                          Get.back(result: true);
                                        }
                                      },
                                    ),
                                  ),
                                Expanded(
                                  child: AppButton(
                                    title: S.current.confirm,
                                    borderRadius: 50.0,
                                    color: ColorUtil.primaryColor,
                                    width: Get.width,
                                    onPressed: controller.confirmProject,
                                  ),
                                ),
                              ],
                            ),
                    ),
                    const SizedBox(
                      height: 60.0,
                    )
                  ],
          );
          return userRole == UserRolesEnum.EngManagementDirector ||
                  userRole == UserRolesEnum.ExecutiveManager
              ? Form(
                  key: controller.formKey,
                  child: child,
                )
              : child;
        },
      ),
    );
  }
}
