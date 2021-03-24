import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/toggleText.dart';
import 'package:pro_eye/app/modules/projects/controllers/projects_controller.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class WarrantyTabbar extends GetView<ProjectsController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (controller.selectedTab.value != 2) {
          return SizedBox.shrink();
        } else {
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
                title: S.of(context).annualGuarantee,
              ),
              foreground: ToggleText(
                title: S.of(context).annualGuarantee,
                foreground: true,
              ),
            ),
            ToggleElement(
              background: ToggleText(
                title: S.of(context).decimalGuarantee,
              ),
              foreground: ToggleText(
                title: S.of(context).decimalGuarantee,
                foreground: true,
              ),
            ),
            ToggleElement(
              background: ToggleText(
                title: S.of(context).outOfWarranty,
              ),
              foreground: ToggleText(
                title: S.of(context).outOfWarranty,
                foreground: true,
              ),
            ),
          ];
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 15.0,
            ),
            child: NeumorphicToggle(
              height: 45.0,
              padding: const EdgeInsets.all(5.0),
              style: NeumorphicToggleStyle(
                borderRadius: BorderRadius.circular(50.0),
              ),
              selectedIndex: controller.selectedWarrantyTap.value,
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
                controller.selectedWarrantyTap.value = value;
                print("Current projects tab : " +
                    controller.selectedWarrantyTap.value.toString());
                controller.viewSubFinishedProjects();
              },
            ),
          );
        }
      },
    );
  }
}
