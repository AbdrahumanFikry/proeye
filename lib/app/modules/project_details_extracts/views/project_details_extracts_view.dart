import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pro_eye/app/components/filtered_paginated_list_int.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/modules/project_details_extracts/components/extract_card.dart';
import 'package:pro_eye/app/modules/project_details_extracts/components/tabs_filter.dart';
import 'package:pro_eye/app/modules/project_details_extracts/dialogs/add_new_extract.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/project_extract_abstract_vm.dart';

import '../controllers/project_details_extracts_controller.dart';

class ProjectDetailsExtractsView
    extends GetView<ProjectDetailsExtractsController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: GlobalAppBar(
        title: S.current.financial,
        enableBack: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('إضافة مستخلص جديد'),
        icon: Icon(Icons.add),
        backgroundColor: ColorUtil.primaryColor,
        onPressed: () async {
          if (await AddNewExtractDialogController.show(controller.projectId)) {
            controller.pagingController?.refresh();
          }
        },
      ),
      body: Column(
        children: [
          if (controller.filterTabs) ExtractsTabsFilter(),
          Expanded(
            child: IntFilteredPaginatedList<ProjectExtractAbstractVM>(
              textFilterController: controller.textFilter,
              extraFilterStream: controller.isIncomingOnlyFilter.stream,
              onControllerInit: (pagingController) =>
                  controller.pagingController = pagingController,
              pageRequestListener: (pagingController, pageKey) {
                controller.fetchProjectExtracts(pagingController, pageKey);
              },
              itemBuilder: (context, item, index) {
                return ExtractCard(
                  extract: item,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
