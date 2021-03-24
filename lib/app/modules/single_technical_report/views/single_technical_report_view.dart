import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/modules/single_technical_report/components/create_only.dart';
import 'package:pro_eye/app/modules/single_technical_report/components/view_only.dart';
import 'package:pro_eye/generated/l10n.dart';

import '../controllers/single_technical_report_controller.dart';

class SingleTechnicalReportView
    extends GetView<SingleTechnicalReportController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: Obx(
        () => GlobalAppBar(
          title: controller.isCreate
              ? S.current.newReport
              : S.current.reportDetails,
          enableBack: true,
          attachments: controller.reportDetails.value?.files,
        ),
      ),
      body: controller.isCreate ? CreateOnlyReport() : ViewOnlyReport(),
    );
  }
}
