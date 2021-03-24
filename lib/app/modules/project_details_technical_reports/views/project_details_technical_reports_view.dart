import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pro_eye/app/components/filtered_paginated_list_int.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/modules/project_details_technical_reports/components/report_card.dart';
import 'package:pro_eye/app/modules/single_technical_report/controllers/single_technical_report_controller.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/technical_report_abstract_vm.dart';

import '../controllers/project_details_technical_reports_controller.dart';

class ProjectDetailsTechnicalReportsView
    extends GetView<ProjectDetailsTechnicalReportsController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: GlobalAppBar(
        title: S.current.technicalReports,
        enableBack: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('أضف تقرير جديد'),
        backgroundColor: ColorUtil.primaryColor,
        icon: Icon(Icons.add),
        onPressed: () async {
          final res = await Get.toNamed(
            Routes.SINGLE_TECHNICAL_REPORT,
            arguments: SingleTechnicalReportRouteParams(
              controller.projectId,
              null,
            ),
          );
          if (res != null) {
            controller.pagingController?.refresh();
          }
        },
      ),
      body: IntFilteredPaginatedList<TechnicalReportAbstractVM>(
        onControllerInit: (_c) => controller.pagingController = _c,
        textFilterController: controller.textFilter,
        itemBuilder: (context, item, index) {
          return ReportCard(
            technicalReport: item,
          );
        },
        pageRequestListener: (pagingController, pageKey) =>
            controller.fetchTechnicalReports(pagingController, pageKey),
      ),
    );
  }
}
