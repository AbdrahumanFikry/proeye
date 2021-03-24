import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/components/toggleText.dart';
import 'package:pro_eye/app/modules/analysis/components/complete_over_incomplete.dart';
import 'package:pro_eye/app/modules/analysis/components/total_projects.dart';
import 'package:pro_eye/app/modules/analysis/components/warranty_stats.dart';
import 'package:pro_eye/app/modules/analysis/controllers/analysis_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class AnalysisView extends GetView<AnalysisController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: GlobalAppBar(
        title: S.of(context).analytics,
        enableBack: true,
      ),
      body: Obx(
        () => AnimatedListHandler(
          onRefresh: controller.fetchStats,
          children: controller.isBusy.value || controller.stats.value == null
              ? <Widget>[]
              : <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: NeumorphicToggle(
                      height: 45.0,
                      style: NeumorphicToggleStyle(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      selectedIndex: controller.isPercentage.value ? 0 : 1,
                      children: <ToggleElement>[
                        ToggleElement(
                          background: ToggleText(
                            title: 'نسبة مئوية',
                          ),
                          foreground: ToggleText(
                            title: 'نسبة مئوية',
                            foreground: true,
                          ),
                        ),
                        ToggleElement(
                          background: ToggleText(
                            title: 'أرقام',
                          ),
                          foreground: ToggleText(
                            title: 'أرقام',
                            foreground: true,
                          ),
                        ),
                      ],
                      thumb: Neumorphic(
                        style: NeumorphicStyle(
                          color: ColorUtil.primaryColor,
                          boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(
                              50.0,
                            ),
                          ),
                        ),
                      ),
                      onChanged: (int value) {
                        controller.isPercentage.value = value == 0;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TotalProjectsStats(),
                  CompleteOverIncompleteProjectsStats(),
                  WarrantyProjectsStats(),
                ],
        ),
      ),
    );
  }
}
