import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/components/mixins/upload_files_controller_mixin.dart';
import 'package:pro_eye/app/models/user_roles.dart';
import 'package:pro_eye/app/services/user_service.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:proeye_api/model/project_name_id.dart';

class ProjectsRequestsController extends GetxController
    with ApiMixin, BusyMixin, UploadFilesMixin {
  final projectsRequest = <ProjectNameId>[].obs;

  final refreshKey = GlobalKey<RefreshIndicatorState>();
  Future<void> fetchProjectsRequests() async {
    final userRole = UserService.to.currentUser?.value?.userRole;
    try {
      startBusy();

      final resp = await request<BuiltList<ProjectNameId>>(
        userRole == UserRolesEnum.ExecutiveManager
            ? api
                .getExecutiveManagerApi()
                .v10ApiExecutionManagerProjectsRequestsGet()
            : api
                .getEngManagementDirectorApi()
                .v10ApiEngManagementDirectorProjectsRequestsGet(),
      );
      projectsRequest.assignAll(resp);
      endBusySuccess();
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
