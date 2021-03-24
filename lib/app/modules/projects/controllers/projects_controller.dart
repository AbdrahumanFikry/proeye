import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/text_filter_mixin.dart';
import 'package:proeye_api/model/project_abstract_view_model.dart';
import 'package:proeye_api/model/warranty_stage_filter_enum.dart';

class ProjectsController extends GetxController with ApiMixin, TextFilterMixin {
  // final allProjects = <String, CacheProject>{}.obs;
  PagingController<int, ProjectAbstractViewModel> pagingController;
  // Map<String, CacheProject> get filteredProjects {
  //   bool Function(MapEntry<String, CacheProject>) predicate;
  //   switch (selectedTab.value) {
  //     case 2:
  //       predicate = (e) => !e.value.isFinished;
  //       break;
  //     case 3:
  //       predicate = (e) => e.value.isFinished;
  //       break;
  //     default:
  //       return allProjects;
  //   }
  //   return Map.fromEntries(allProjects.entries.where(predicate));
  // }

  final refreshKey = GlobalKey<RefreshIndicatorState>();

  final innerDrawerKey = GlobalKey<InnerDrawerState>();

  final projectNameFilter = true.obs;
  final ownerSideFilter = true.obs;
  final idCodeFilter = true.obs;
  final executingAgencyFilter = true.obs;
  final executingPositionFilter = true.obs;
  final colorMapFilter = true.obs;

  final selectedTab = 0.obs;
  final selectedWarrantyTap = 0.obs;

  static ProjectsController get to => Get.find();

  @override
  int get pageSize => 5;
  WarrantyStageFilterEnum get warrantyStageFilter {
    if (selectedTab.value == 2) {
      switch (selectedWarrantyTap.value) {
        case 0:
          //الكل
          return null;
        case 1:
          //استلام أولى
          return WarrantyStageFilterEnum.initialWarranty;
        case 2:
          //استلام نهائي
          return WarrantyStageFilterEnum.finalWarranty;
        case 3:
          //خارج الضمان
          return WarrantyStageFilterEnum.afterFinalWarranty;
        default:
      }
    }
    return null;
  }

  bool get isDoneFilter {
    switch (selectedTab.value) {
      case 0: //الكل
      case 3: //المرفوض
        return null;
      case 1: //الجاري
        return false;
      case 2: //المنتهي
        return true;
      default:
        return null;
    }
  }

  Future<void> fetchPage(
    PagingController<int, ProjectAbstractViewModel> pagingController,
    int pageIndex,
  ) async {
    //
    try {
      print('Fetching projects at page:$pageIndex,size:$pageSize');
      final pageData = await request(
        api.getProjectApi().v10ApiProjectsGet(
              filterStr: textFilter.text.isEmpty ? null : textFilter.text,
              isDone: isDoneFilter,
              deniedOnly: selectedTab.value == 3,
              warrantyStage: warrantyStageFilter,
              pageIndex: pageIndex,
              pageSize: pageSize,
            ),
      );
      if (pageData.hasNextPage) {
        pagingController.appendPage(pageData.page.toList(), pageIndex + 1);
      } else {
        pagingController.appendLastPage(pageData.page.toList());
      }
    } catch (e) {
      pagingController.error = e.toString();
    }
  }

  void viewSubFinishedProjects() {
    // if (selectedTap.value == 2) {
    //   var entries = allProjects.entries.where((e) => !e.value.isFinished);
    //   projects.assignAll(Map.fromEntries(entries));
    // } else if (selectedTap.value == 3) {
    //   var entries = allProjects.entries.where((e) => e.value.isFinished);
    //   projects.assignAll(Map.fromEntries(entries));
    // } else {
    //   projects.assignAll(allProjects);
    // }
  }
  bool get noFilter =>
      !projectNameFilter.value &&
      !ownerSideFilter.value &&
      !idCodeFilter.value &&
      !executingAgencyFilter.value &&
      !executingPositionFilter.value &&
      !colorMapFilter.value;

  bool get allFiltered =>
      projectNameFilter.value &&
      ownerSideFilter.value &&
      idCodeFilter.value &&
      executingAgencyFilter.value &&
      executingPositionFilter.value &&
      colorMapFilter.value;

  void check() {
    if (noFilter) {
      projectNameFilter.value = true;
      ownerSideFilter.value = true;
      idCodeFilter.value = true;
      executingAgencyFilter.value = true;
      executingPositionFilter.value = true;
      colorMapFilter.value = true;
    }
  }

  @override
  void onReady() {
    super.onReady();
    // sub = CacheService.to.projectRepo.dataStream.listen((event) {
    //   allProjects.assignAll(event);
    // });
    print('refreshKeyState is null?: ${refreshKey.currentState == null}');
    refreshKey.currentState?.show();
  }
}
