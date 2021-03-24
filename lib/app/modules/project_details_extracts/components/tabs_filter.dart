import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/modules/project_details_extracts/controllers/project_details_extracts_controller.dart';
import 'package:pro_eye/app/components/toggleText.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class ExtractsTabsFilter extends GetView<ProjectDetailsExtractsController> {
  @override
  Widget build(BuildContext context) {
    final List<ToggleElement> items = [
      ToggleElement(
        background: ToggleText(
          title: S.of(context).all,
        ),
        foreground: ToggleText(
          title: S.of(context).all,
          foreground: true,
        ),
      ),
      ToggleElement(
        background: ToggleText(
          title: S.of(context).coming,
        ),
        foreground: ToggleText(
          title: S.of(context).coming,
          foreground: true,
        ),
      ),
      ToggleElement(
        background: ToggleText(
          title: S.of(context).out,
        ),
        foreground: ToggleText(
          title: S.of(context).out,
          foreground: true,
        ),
      ),
    ];
    return Obx(
      () => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        child: NeumorphicToggle(
          height: 45.0,
          padding: const EdgeInsets.all(5.0),
          style: NeumorphicToggleStyle(
            borderRadius: BorderRadius.circular(50.0),
          ),
          selectedIndex: controller.selectedTap,
          children: items,
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
            controller.isIncomingOnlyFilter.value = value == 0
                ? null
                : value == 1
                    ? true
                    : false;
          },
        ),
      ),
    );
  }
}
