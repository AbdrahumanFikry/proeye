import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/modules/analysis/controllers/analysis_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';

import 'pie_chart_section_template.dart';
import 'pie_chart_template.dart';

final acceptedProjects = Colors.green;
final refusedProjects = ColorUtil.errorColor;
final pendingEngManagementProjects = ColorUtil.primaryColor;
final pendingCenterProjects = Colors.black;

class TotalProjectsStats extends GetView<AnalysisController> {
  @override
  Widget build(BuildContext context) {
    return PieChartTemplate(
      shouldShow: (val) =>
          val.acceptedProjects != 0 ||
          val.refusedProjects != 0 ||
          val.pendingEngManagementProjects != 0 ||
          val.pendingCenterProjects != 0,
      title: (val) => 'طلبات المشاريع',
      totalCount: (val) => val.allProjects,
      builder: (val, isPercentage) {
        return PieChart(
          PieChartData(
            sections: [
              PieChartSectionTemplate(
                val.acceptedProjects,
                val.allProjects,
                color: acceptedProjects,
                isPercentage: isPercentage,
              ),
              PieChartSectionTemplate(
                val.refusedProjects,
                val.allProjects,
                color: refusedProjects,
                isPercentage: isPercentage,
              ),
              PieChartSectionTemplate(
                val.pendingEngManagementProjects,
                val.allProjects,
                color: pendingEngManagementProjects,
                isPercentage: isPercentage,
              ),
              PieChartSectionTemplate(
                val.pendingCenterProjects,
                val.allProjects,
                color: pendingCenterProjects,
                isPercentage: isPercentage,
              ),
            ],
            centerSpaceRadius: 40,
            borderData: FlBorderData(
              show: false,
            ),
            sectionsSpace: 0,
          ),
        );
      },
      legend: [
        Legend(
          'المقبولة',
          acceptedProjects,
        ),
        Legend(
          'المرفوضة',
          refusedProjects,
        ),
        Legend(
          'بانتظار الإدارة\nالهندسية',
          pendingEngManagementProjects,
        ),
        Legend(
          'بانتظار مركز\nالدراسات',
          pendingCenterProjects,
        ),
      ],
    );
  }
}
