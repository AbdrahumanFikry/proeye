import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/form_fields/themed_data_viewer.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/modules/single_technical_report/controllers/single_technical_report_controller.dart';
import 'package:pro_eye/app/modules/user_profile_view.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class ViewOnlyReport extends GetView<SingleTechnicalReportController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final report = controller.reportDetails.value;
        if (controller.isBusy.value) return Loading();
        return AnimatedListHandler(
          onRefresh: controller.fetchReportDetails,
          children: report == null
              ? <Widget>[]
              : <Widget>[
                  ThemedDataViewer(
                    title: S.current.reportTitle,
                    content: report.title,
                  ),
                  ThemedDataViewer(
                    title: S.current.reportDate,
                    content: report.date.toShortUserString(),
                  ),
                  ThemedDataViewer(
                    title: S.current.reportDesc,
                    content: report.desc,
                    maxLines: 5,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ThemedDataViewer(
                    title: S.current.reportIssuer,
                    content: report.issuer?.nameAr,
                    selectable: false,
                    onTap: () {
                      Get.to(() => UserProfileView(report.issuer));
                    },
                  ),
                  ThemedDataViewer(
                    title: S.current.reportEntryDate,
                    content: report.issuedAt.toLongUserString(),
                    selectable: true,
                  ),
                ],
        );
      },
    );
  }
}
