import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/modules/analysis/controllers/analysis_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:proeye_api/model/stats_object.dart';

import 'pie_chart_section_template.dart';
import 'pie_chart_template.dart';

class CompleteOverIncompleteProjectsStats extends GetView<AnalysisController> {
  @override
  Widget build(BuildContext context) {
    final shouldShow = (StatsObject val) =>
        val.incompleteProjects != 0 || val.completedProjects != 0;
    return PieChartTemplate(
      totalCount: (val) => val.acceptedProjects,
      shouldShow: shouldShow,
      title: (val) => 'المشاريع المقبولة',
      builder: (val, isPercentage) {
        return PieChart(
          PieChartData(
            sections: [
              PieChartSectionTemplate(
                val.incompleteProjects,
                val.acceptedProjects,
                color: ColorUtil.primaryColor,
                isPercentage: isPercentage,
              ),
              PieChartSectionTemplate(
                val.completedProjects,
                val.acceptedProjects,
                color: ColorUtil.errorColor,
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
          'الجارية',
          ColorUtil.primaryColor,
        ),
        Legend(
          'المنتهية',
          ColorUtil.errorColor,
        ),
      ],
    );
  }
}
