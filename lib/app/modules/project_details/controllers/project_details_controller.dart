import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/components/mixins/upload_files_controller_mixin.dart';
import 'package:pro_eye/app/models/user_roles.dart';
import 'package:pro_eye/app/services/appService.dart';
import 'package:pro_eye/app/services/user_service.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/committee_type_enum.dart';
import 'package:proeye_api/model/complete_project_details_vm.dart';
import 'package:proeye_api/model/per_project_user_role_enum.dart';
import 'package:proeye_api/model/project_abstract_committee_vm.dart';

enum ContainerState {
  Shrink,
  Expanded,
}

class ProjectDetailsRouteParams {
  final String projectId;
  final String projectName;

  ProjectDetailsRouteParams({
    @required this.projectId,
    @required this.projectName,
  });
}

class ProjectDetailsController extends GetxController
    with ApiMixin, BusyMixin, UploadFilesMixin {
  final containerState = Rx<ContainerState>(ContainerState.Shrink);
  final supervisionGroupVal = 0.obs;
  final projectDetails = Rx<CompleteProjectDetailsVM>();
  Map<String, ProjectAbstractCommitteeVM> get committees => Map.fromEntries(
      projectDetails.value.committees.map((x) => MapEntry(x.committeeId, x)));

  final ProjectDetailsRouteParams params;
  String get projectId => params.projectId;
  String get projectName => params.projectName;

  bool get isOnlyATeamMember =>
      UserService.to.currentUser.value.userRole == UserRolesEnum.NormalUser &&
      projectDetails.value.userRelations
          .every((x) => x.type == PerProjectUserRoleEnum.teamMember);

  CommitteeTypeEnum get projectNeeds {
    if (projectDetails.value.actualEnd == null) return null;
    final hasInitial = projectDetails.value.committees
        .any((x) => x.committeeType == CommitteeTypeEnum.receiveInitial);
    final hasFinal = projectDetails.value.committees
        .any((x) => x.committeeType == CommitteeTypeEnum.receiveFinal);
    if (hasInitial) {
      if (!hasFinal) {
        if (projectDetails.value.initialWarrantyDate != null) {
          //initial committee finished its job
          return CommitteeTypeEnum.receiveFinal;
        }
      }
      return null;
    } else {
      return CommitteeTypeEnum.receiveInitial;
    }
  }

  ProjectDetailsController(this.params);

  static ProjectDetailsController get to => Get.find();

  void onChangedSupervisionRadio(int value) {
    supervisionGroupVal.value = value;
  }

  Future<void> fetchSingleProject() async {
    try {
      startBusy();
      projectDetails.value = await request<CompleteProjectDetailsVM>(
        api.getProjectApi().v10ApiProjectsIdGet(projectId),
      );
      endBusySuccess();
    } catch (error) {
      endBusyError(error.toString());
    }
  }

  Future<void> supervise() async {
    try {
      startBusy();
      await request(
        api
            .getEngManagementDirectorApi()
            .v10ApiEngManagementDirectorProjectsIdSpecifySupervisionStatusPost(
              projectId,
              isSupervisor: supervisionGroupVal.value == 0,
            ),
      );
      AppUtil.showAlertDialog(
        body: S.current.confirmingDone,
      );
      endBusySuccess();
    } catch (error) {
      endBusyError(error.toString());
    }
  }

  @override
  void onReady() {
    super.onReady();
    AppService.to.fetchGovs();
    fetchSingleProject();
  }

  @override
  void onClose() async {
    super.onClose();
  }
}
