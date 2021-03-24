import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/modules/analysis/controllers/analysis_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';

import 'pie_chart_section_template.dart';
import 'pie_chart_template.dart';

class WarrantyProjectsStats extends GetView<AnalysisController> {
  @override
  Widget build(BuildContext context) {
    return PieChartTemplate(
      shouldShow: (val) =>
          val.initialWarrantyProjects != 0 ||
          val.finalWarrantyProjects != 0 ||
          val.outsideFinalWarrantyProjects != 0,
      totalCount: (val) => val.completedProjects,
      title: (val) => 'المشاريع المنتهية',
      builder: (val, isPercentage) {
        return PieChart(
          PieChartData(
            sections: [
              PieChartSectionTemplate(
                val.initialWarrantyProjects,
                val.completedProjects,
                color: ColorUtil.primaryColor,
                isPercentage: isPercentage,
              ),
              PieChartSectionTemplate(
                val.finalWarrantyProjects,
                val.completedProjects,
                color: Colors.black,
                isPercentage: isPercentage,
              ),
              PieChartSectionTemplate(
                val.outsideFinalWarrantyProjects,
                val.completedProjects,
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
          'ضمان سنوي',
          ColorUtil.primaryColor,
        ),
        Legend(
          'ضمان عشري',
          Colors.black,
        ),
        Legend(
          'خارج الضمان',
          ColorUtil.errorColor,
        ),
      ],
    );
  }
}
