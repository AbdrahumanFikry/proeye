import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/appButton.dart';
import 'package:pro_eye/app/components/appDirectionality.dart';
import 'package:pro_eye/app/components/form_fields/themed_data_viewer.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/components/proccessColors.dart';
import 'package:pro_eye/app/models/user_roles.dart';
import 'package:pro_eye/app/modules/project_details/components/committee.dart';
import 'package:pro_eye/app/modules/project_details/components/creationDetails.dart';
import 'package:pro_eye/app/modules/project_details/components/executingAgencyBlock.dart';
import 'package:pro_eye/app/modules/project_details/components/identficationCodeBlock.dart';
import 'package:pro_eye/app/modules/project_details/components/ownerSideBlock.dart';
import 'package:pro_eye/app/modules/project_details/components/projectMangerBlock.dart';
import 'package:pro_eye/app/modules/project_details/components/representativeBlock.dart';
import 'package:pro_eye/app/modules/project_details/components/supervision.dart';
import 'package:pro_eye/app/modules/project_details/components/warranty_details.dart';
import 'package:pro_eye/app/modules/project_details/controllers/project_details_controller.dart';
import 'package:pro_eye/app/modules/project_details/dialogs/create_receive_committee_dialog.dart';
import 'package:pro_eye/app/modules/project_details_extracts/controllers/project_details_extracts_controller.dart';
import 'package:pro_eye/app/modules/single_project_request_details/dialogs/create_new_committee_dialog.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/services/user_service.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/colored_danger_zone_vm.dart';
import 'package:proeye_api/model/committee_type_enum.dart';
import 'package:proeye_api/model/per_project_user_role_enum.dart';
import 'package:proeye_api/model/req_receive_committee_vm.dart';

class ProjectDetailsView extends GetView<ProjectDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final projectDetails = controller.projectDetails.value;
        final userRole = UserService.to.currentUser.value.userRole;
        return GlobalScaffold(
          appBar: GlobalAppBar(
            attachments: projectDetails?.filePool,
            title: S.of(context).projectDetails,
            enableBack: true,
          ),
          body: controller.isBusy.value || projectDetails == null
              ? Loading()
              : AnimatedListHandler(
                  onRefresh: controller.fetchSingleProject,
                  children: [
                    ThemedDataViewer(
                      title: S.current.projectName,
                      content: controller.projectName,
                    ),
                    if (projectDetails.isAcceptedByEngManagementDirector ==
                        false)
                      ThemedDataViewer(
                        title: S.current.rejectionReason,
                        content:
                            projectDetails.engManagementDirectorRefuseReason,
                      ),
                    ProcessColors(
                      projectDetails?.taskDangerZones?.toList() ??
                          <ColoredDangerZoneVM>[],
                      margins: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      padding: EdgeInsets.all(8.0),
                    ),
                    if (projectDetails.initialWarrantyDate != null)
                      WarrantyDetails(
                        warranty: projectDetails.initialWarrantyDate,
                        warrantyTitle: 'الضمان السنوى',
                      ),
                    if (projectDetails.finalWarrantyDate != null &&
                        projectDetails.initialWarrantyDate != null &&
                        !projectDetails.initialWarrantyDate.isActive)
                      WarrantyDetails(
                        warranty: projectDetails.finalWarrantyDate,
                        warrantyTitle: 'الضمان العشري',
                      ),
                    IdentificationCodeBlock(),
                    CreationDetailsBlock(),
                    RepresentativeBlock(),
                    OwnerSideBlock(),
                    ExecutingAgencyBlock(),
                    if (projectDetails.projectManager != null)
                      ProjectManagerBlock(),
                    if (projectDetails.isAcceptedByEngManagementDirector ==
                            true &&
                        !controller.isOnlyATeamMember)
                      AppButton(
                        color: ColorUtil.primaryColor,
                        textColor: Colors.white,
                        title: S.current.financial,
                        onPressed: () => Get.toNamed(
                          Routes.PROJECT_DETAILS_EXTRACTS,
                          arguments: ProjectDetailsExtractsRouteInputParams(
                            controller.projectId,
                          ),
                        ),
                      ),
                    if (projectDetails.isAcceptedByEngManagementDirector ==
                            true &&
                        !controller.isOnlyATeamMember)
                      AppButton(
                        color: ColorUtil.primaryColor,
                        textColor: Colors.white,
                        title: S.current.technicalReports,
                        onPressed: () => Get.toNamed(
                          Routes.PROJECT_DETAILS_TECHNICAL_REPORTS,
                          arguments: controller.projectId,
                        ),
                      ),
                    if (projectDetails.isAcceptedByEngManagementDirector ==
                            true &&
                        projectDetails.committees != null)
                      CommitteesBlock(),
                    if (userRole == UserRolesEnum.ExecutiveManager &&
                        controller.projectNeeds != null)
                      AppButton(
                        title: 'تكوين لجنة استلام ' +
                            (controller.projectNeeds ==
                                    CommitteeTypeEnum.receiveInitial
                                ? 'أولي'
                                : 'نهائي'),
                        onPressed: () async {
                          if (await CreateReceiveCommitteeDialog(
                                  controller.projectId)
                              .show()) {
                            controller.fetchSingleProject();
                          }
                        },
                        color: ColorUtil.primaryColor,
                      ),
                    if (userRole == UserRolesEnum.EngManagementDirector &&
                        projectDetails.isAcceptedByEngManagementDirector ==
                            true)
                      SupervisionBlock(),
                    const SizedBox(
                      height: 75.0,
                    ),
                  ],
                ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: ColorUtil.primaryColor,
            elevation: 10.0,
            tooltip: S.of(context).chat,
            onPressed: () {
              if (controller?.projectId != null) {
                Get.toNamed(
                  Routes.ROOMS,
                  arguments: controller?.projectId,
                );
              }
            },
            child: Icon(
              FontAwesomeIcons.comments,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
