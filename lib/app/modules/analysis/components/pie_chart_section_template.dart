import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/modules/analysis/controllers/analysis_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';

class PieChartSectionTemplate extends PieChartSectionData {
  static AnalysisController get controller => Get.find();
  PieChartSectionTemplate(
    int current,
    int total, {
    Color textColor = Colors.white,
    Color color = ColorUtil.primaryColor,
    double radius = 50,
    @required bool isPercentage,
  }) : super(
          title: isPercentage
              ? (current / total * 100).toStringAsFixed(0) + '%'
              : current.toString(),
          value: current / total,
          radius: radius,
          color: color,
          showTitle: current != 0,
          titleStyle: TextStyle(
            color: textColor,
            fontSize: 18,
          ),
        );
}
