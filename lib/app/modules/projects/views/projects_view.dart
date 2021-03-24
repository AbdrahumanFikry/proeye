import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/appDirectionality.dart';
import 'package:pro_eye/app/components/drawer/appDrawer.dart';
import 'package:pro_eye/app/components/filtered_paginated_list_int.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/modules/projects/components/projectCard.dart';
import 'package:pro_eye/app/modules/projects/components/tabBarAndFilter.dart';
import 'package:pro_eye/app/modules/projects/components/warrantyTabBar.dart';
import 'package:pro_eye/app/modules/projects/controllers/projects_controller.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/project_abstract_view_model.dart';
import 'package:rxdart/rxdart.dart' as rx;

class ProjectsView extends GetView<ProjectsController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool result = await AppUtil.showAlertDialog(
          title: S.of(context).areYouSure,
          body: S.of(context).wantToExit,
          enableCancel: true,
          confirmText: 'نعم',
          cancelText: 'لا',
        );
        if (result == null) return false;
        return result;
      },
      child: AppDirectionality(
        child: AppDrawer(
          innerDrawerKey: controller.innerDrawerKey,
          child: GlobalScaffold(
//             floatingActionButton: FloatingActionButton(
//               child: Text('test'),
//               onPressed: () {
//                 printInfo(info: jsonEncode('''أ.د. محرم - مديراً للمشروع
// * تم استلام الموقع بتاريخ  1-11-2020'''));
//               },
//             ),
            appBar: GlobalAppBar(
              title: S.of(context).projects,
              enableDrawer: true,
              toOpenDrawer: () {
                controller.innerDrawerKey.currentState.toggle(
                  direction: InnerDrawerDirection.start,
                );
              },
            ),
            body: Column(
              children: [
                TabbarAndFilter(),
                WarrantyTabbar(),
                Expanded(
                  child: IntFilteredPaginatedList<ProjectAbstractViewModel>(
                    textFilterController: controller.textFilter,
                    pageRequestListener: controller.fetchPage,
                    extraFilterStream: controller.selectedTab.stream.mergeWith(
                      [
                        controller.selectedWarrantyTap.stream,
                      ],
                    ),
                    onControllerInit: (c) => controller.pagingController = c,
                    itemBuilder: (context, p, index) => ProjectCard(p),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
