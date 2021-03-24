import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/components/form_fields/themed_data_viewer.dart';
import 'package:pro_eye/app/modules/project_details_technical_reports/controllers/project_details_technical_reports_controller.dart';
import 'package:pro_eye/app/modules/single_technical_report/controllers/single_technical_report_controller.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:proeye_api/model/technical_report_abstract_vm.dart';

class ReportCard extends GetView<ProjectDetailsTechnicalReportsController> {
  final TechnicalReportAbstractVM technicalReport;

  const ReportCard({Key key, @required this.technicalReport}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GlobalCard(
      onTap: () => Get.toNamed(
        Routes.SINGLE_TECHNICAL_REPORT,
        arguments: SingleTechnicalReportRouteParams(
          controller.projectId,
          technicalReport.reportId,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            technicalReport.title,
            style: TextStyle(
              color: ColorUtil.primaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 48.sp,
            ),
          ),
          Text(
            technicalReport.desc,
            style: TextStyle(
              color: ColorUtil.primaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 38.sp,
            ),
            maxLines: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                technicalReport.date.toShortUserString(),
                style: TextStyle(
                  color: ColorUtil.primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 34.sp,
                ),
              ),
              const SizedBox(
                width: 5.0,
              ),
              Icon(
                Icons.access_time_sharp,
                color: ColorUtil.primaryColor,
                size: 14.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}
