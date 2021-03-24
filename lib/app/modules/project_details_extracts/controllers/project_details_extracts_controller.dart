import 'dart:async';

import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/components/mixins/text_filter_mixin.dart';
import 'package:pro_eye/app/models/user_roles.dart';
import 'package:pro_eye/app/services/user_service.dart';
import 'package:proeye_api/model/project_extract_abstract_vm.dart';

class ProjectDetailsExtractsRouteInputParams {
  final String projectId;

  ProjectDetailsExtractsRouteInputParams(this.projectId);
}

class ProjectDetailsExtractsController extends GetxController
    with ApiMixin, BusyMixin, TextFilterMixin {
  final ProjectDetailsExtractsRouteInputParams params;
  String get projectId => params.projectId;
  ProjectDetailsExtractsController(this.params);
  PagingController<int, ProjectExtractAbstractVM> pagingController;

  int get selectedTap => isIncomingOnlyFilter.value == null
      ? 0
      : isIncomingOnlyFilter.value
          ? 1
          : 2;
  final isIncomingOnlyFilter = Rx<bool>();

  bool get filterTabs =>
      UserService.to.currentUser.value?.userRole ==
          UserRolesEnum.EngManagementDirector ||
      UserService.to.currentUser.value?.userRole ==
          UserRolesEnum.ExecutiveManager;

  Future<void> fetchProjectExtracts(
    PagingController<int, ProjectExtractAbstractVM> pagingController,
    int pageIndex,
  ) async {
    try {
      startBusy();
      final resp = await request(
        api.getExtractsApi().v10ApiProjectsIdExtractsGet(
              projectId,
              filterStr: textFilter.text,
              pageIndex: pageIndex,
              pageSize: pageSize,
              isIncomingOnly: filterTabs ? isIncomingOnlyFilter.value : null,
            ),
      );
      if (resp.hasNextPage) {
        pagingController.appendPage(
          resp.page.toList(),
          resp.pageIndex + 1,
        );
      } else {
        pagingController.appendLastPage(resp.page.toList());
      }
      endBusySuccess();
    } catch (error) {
      endBusyError(error.toString());
    }
  }

  @override
  void onClose() async {
    textFilter.dispose();
    await closeSubs();
    super.onClose();
  }
}
