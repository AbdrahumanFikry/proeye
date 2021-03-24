import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/models/user_roles.dart';
import 'package:pro_eye/app/services/user_service.dart';
import 'package:proeye_api/model/project_extract_vm.dart';

class ExtractDetailsRouteInputParams {
  final String extractId;
  final String projectId;

  ExtractDetailsRouteInputParams({
    @required this.extractId,
    @required this.projectId,
  });
}

class ExtractDetailsController extends GetxController with ApiMixin, BusyMixin {
  final extractDetails = Rx<ProjectExtractVM>();
  final ExtractDetailsRouteInputParams params;
  ExtractDetailsController(this.params);

  UserRolesEnum get currentRole => UserService.to?.currentUser?.value?.userRole;
  bool get canReview =>
      extractDetails.value?.targets
          ?.any((t) => t.reviewResult == null && t.canCurrentUserReview) ==
      true;

  Future<void> fetchSingleExtract() async {
    try {
      startBusy();
      extractDetails.value = await request<ProjectExtractVM>(
        api.getExtractsApi().v10ApiProjectsIdExtractsExtractIdGet(
              params.projectId,
              params.extractId,
            ),
      );
      endBusySuccess();
    } catch (error) {
      endBusyError(error.toString(), showDialog: true);
    }
  }

  @override
  void onReady() {
    super.onReady();
    fetchSingleExtract();
  }
}
