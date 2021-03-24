import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/modules/analysis/controllers/analysis_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:proeye_api/model/stats_object.dart';

import 'indicator.dart';

class Legend {
  final String desc;
  final Color color;

  Legend(this.desc, this.color);
}

class PieChartTemplate extends GetView<AnalysisController> {
  final String Function(StatsObject statsObject) title;
  final Widget Function(StatsObject statsObject, bool isPercentage) builder;
  final List<Legend> legend;
  final bool Function(StatsObject statsObject) shouldShow;
  final num Function(StatsObject statsObject) totalCount;
  const PieChartTemplate({
    Key key,
    @required this.totalCount,
    @required this.title,
    @required this.builder,
    this.legend,
    this.shouldShow,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final val = controller.stats.value;
        if (shouldShow != null && !shouldShow(val)) {
          return SizedBox.shrink();
        }
        return Stack(
          children: [
            GlobalCard(
              onTap: null,
              padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (title != null)
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 8, right: 4, bottom: 20),
                      child: Text(
                        title(val),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorUtil.primaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  Row(
                    children: [
                      Flexible(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Obx(
                            () => builder(val, controller.isPercentage.value),
                          ),
                        ),
                      ),
                      if (legend != null)
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsetsDirectional.only(start: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: legend
                                  .map(
                                    (e) => Indicator(
                                      text: e.desc,
                                      color: e.color,
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            PositionedDirectional(
              top: 40,
              end: 10,
              child: Container(
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start: 8),
                  child: Text(
                    totalCount(val).toStringAsFixed(0),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: ColorUtil.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                width: 70,
              ),
            ),
          ],
        );
      },
    );
  }
}
