import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/components/mixins/upload_files_controller_mixin.dart';
import 'package:pro_eye/app/models/centerRole.dart';
import 'package:pro_eye/app/models/user_roles.dart';
import 'package:pro_eye/app/modules/projects/controllers/projects_controller.dart';
import 'package:pro_eye/app/services/user_service.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/app_file_view_model.dart';
import 'package:proeye_api/model/consulting_center_role_enum.dart';
import 'package:proeye_api/model/eng_management_director_simple_project_details_view_model.dart';
import 'package:proeye_api/model/execution_company_view_model.dart';
import 'package:proeye_api/model/executive_manager_simple_project_details_view_model.dart';
import 'package:proeye_api/model/project_name_id.dart';
import 'package:proeye_api/model/req_committee_vm.dart';
import 'package:proeye_api/model/req_executive_manager_complete_project_request_view_model.dart';

class SingleProjectRequestDetailsController extends GetxController
    with ApiMixin, BusyMixin, UploadFilesMixin {
  final ProjectNameId projectNameId;
  final publishGroupValue = 0.obs;
  final projectStartDate = Rx<DateTime>();
  final projectDuration = Rx<Duration>();
  UserRolesEnum get userRole => UserService.to?.currentUser?.value?.userRole;

  final executiveManagerProjectDetails =
      Rx<ExecutiveManagerSimpleProjectDetailsViewModel>();
  final engManagementDirectorProjectDetails =
      Rx<EngManagementDirectorSimpleProjectDetailsViewModel>();

  BuiltList<AppFileViewModel> get requestFiles =>
      (executiveManagerProjectDetails.value != null
          ? executiveManagerProjectDetails.value?.files
          : engManagementDirectorProjectDetails.value?.files) ??
      <AppFileViewModel>[].toBuiltList();

  final executionCompany = Rx<ExecutionCompanyViewModel>();

  final formKey = GlobalKey<FormState>();
  final refreshKey = GlobalKey<RefreshIndicatorState>();

  final newExecutionCompanyLoading = false.obs;
  final projectManager = TextEditingController();
  final estimatedValue = TextEditingController();
  final centerRole = Rx<CenterRole>();
  final allAddedCommittee = RxList<ReqCommitteeVM>([]);
  final rolesList = <CenterRole>[
    CenterRole(
      title: S.current.supervisionRole,
      centerRoleEnum: ConsultingCenterRoleEnum.S,
    ),
    CenterRole(
      title: S.current.supervisionDesignRole,
      centerRoleEnum: ConsultingCenterRoleEnum.SD,
    ),
    CenterRole(
      title: S.current.designRole,
      centerRoleEnum: ConsultingCenterRoleEnum.D,
    ),
    CenterRole(
      title: S.current.consultingRole,
      centerRoleEnum: ConsultingCenterRoleEnum.C,
    ),
  ];

  SingleProjectRequestDetailsController(this.projectNameId);

  Future<void> fetchProjectDetails() async {
    final userRole = UserService.to?.currentUser?.value?.userRole;
    print('Request id : ' + projectNameId.projectId);
    if (userRole == UserRolesEnum.ExecutiveManager) {
      await fetchExecutionManagerProjectRequestDetails();
    } else {
      await fetchEngManagementDirectorProjectRequestDetails();
    }
    filesStateController.value = filesStateController.value
        .resetRemovedFiles()
        .copyWith(existingFiles: requestFiles);
  }

  Future<void> fetchExecutionManagerProjectRequestDetails() async {
    try {
      startBusy();
      executiveManagerProjectDetails.value =
          await request<ExecutiveManagerSimpleProjectDetailsViewModel>(
        api
            .getExecutiveManagerApi()
            .v10ApiExecutionManagerProjectsRequestsIdGet(
              projectNameId.projectId,
            ),
      );
      endBusySuccess();
    } catch (error) {
      endBusyError(error.toString());
    }
  }

  Future<void> fetchEngManagementDirectorProjectRequestDetails() async {
    try {
      startBusy();
      engManagementDirectorProjectDetails.value = await request(
        api
            .getEngManagementDirectorApi()
            .v10ApiEngManagementDirectorProjectsRequestsIdGet(
              projectNameId.projectId,
            ),
      );
      endBusySuccess();
    } catch (error) {
      endBusyError(error.toString(), showDialog: true);
    }
  }

  void confirmProject() {
    final userRole = UserService.to?.currentUser?.value?.userRole;
    print('Request id : ' + projectNameId.projectId);
    if (userRole == UserRolesEnum.ExecutiveManager) {
      completeExecutiveMangerProject();
    } else {
      confirmEngManagementDirectorProjectRequest();
    }
  }

  Future<void> confirmEngManagementDirectorProjectRequest() async {
    try {
      final formData = formKey.currentState;

      if (formData.validate()) {
        formData.save();

        if (executionCompany.value != null) {
          startBusy();
          await request(
            api
                .getEngManagementDirectorApi()
                .v10ApiEngManagementDirectorProjectsIdAcceptRequestPost(
                  projectNameId.projectId,
                  executionCompanyId: executionCompany.value.companyId,
                  isDirectSelection: publishGroupValue.value == 0,
                  officialRequestFiles:
                      (await prepareFilesToUpload()).toBuiltList(),
                ),
          );

          endBusySuccess();
          Get.back(result: true);
          AppUtil.showAlertDialog(
            body: S.current.confirmingDone,
            enableCancel: false,
          );
        } else {
          endBusyError(S.current.dataIsNotCompleted, showDialog: true);
        }
      }
    } catch (error) {
      endBusyError(error.toString(), showDialog: true);
    }
  }

  Future<void> completeExecutiveMangerProject() async {
    try {
      final formData = formKey.currentState;
      if (formData.validate()) {
        if (allAddedCommittee.length == 0) {
          AppUtil.showAlertDialog(
            body: 'برجاء إضافة لجنة على الأقل',
            enableCancel: false,
          );
          return;
        }
        if (projectStartDate.value == null) {
          AppUtil.showAlertDialog(
            body: 'برجاء إدخال تاريخ بداية المشروع',
            enableCancel: false,
          );
          return;
        }

        formData.save();
        startBusy();

        await request(
          api
              .getExecutiveManagerApi()
              .v10ApiExecutionManagerProjectsIdCompleteRequestPost(
                projectNameId.projectId,
                reqExecutiveManagerCompleteProjectRequestViewModel:
                    (ReqExecutiveManagerCompleteProjectRequestViewModelBuilder()
                          ..startDate = projectStartDate.value
                          ..expectedDuration = projectDuration.value.inDays
                          ..committees =
                              allAddedCommittee.toBuiltList().toBuilder()
                          ..relativeFileUrls = (await uploadFilesToServer())
                              .toBuiltList()
                              .toBuilder()
                          ..projectManagerId = projectManager.text
                          ..consultingCenterRole =
                              centerRole.value?.centerRoleEnum ??
                                  ConsultingCenterRoleEnum.C)
                        .build(),
              ),
        );
        endBusySuccess();
        Get.back(result: true);
        await ProjectsController.to?.refreshKey?.currentState?.show();
      }
    } catch (error) {
      endBusyError(error.toString(), showDialog: true);
    }
  }

  @override
  void onReady() {
    super.onReady();
    refreshKey.currentState?.show();
  }
}
