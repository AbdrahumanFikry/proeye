import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/drawer/filterItem.dart';
import 'package:pro_eye/app/modules/projects/controllers/projects_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class FilterDrawer extends GetView<ProjectsController> {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        color: ColorUtil.backgroundColor,
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.zero,
        ),
      ),
      margin: const EdgeInsets.all(1.0),
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      child: Obx(
        () => AnimatedListHandler(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: Text(
                S.of(context).filter,
                style: TextStyle(
                  color: ColorUtil.primaryColor,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            FilterItem(
              title: S.of(context).allData,
              value: controller.allFiltered,
              onChanged: (bool value) {
                if (value == true) {
                  controller.projectNameFilter.value = true;
                  controller.ownerSideFilter.value = true;
                  controller.executingAgencyFilter.value = true;
                  controller.idCodeFilter.value = true;
                  controller.executingPositionFilter.value = true;
                  controller.colorMapFilter.value = true;
                } else {
                  controller.colorMapFilter.value = false;
                }
              },
            ),
            if (!controller.allFiltered)
              FilterItem(
                title: S.of(context).projectName,
                value: controller.projectNameFilter.value,
                onChanged: (bool value) {
                  controller.projectNameFilter.value = value;
                  controller.check();
                },
              ),
            if (!controller.allFiltered)
              FilterItem(
                title: S.of(context).ownerSide,
                value: controller.ownerSideFilter.value,
                onChanged: (bool value) {
                  controller.ownerSideFilter.value = value;
                  controller.check();
                },
              ),
            if (!controller.allFiltered)
              FilterItem(
                title: S.of(context).executingAgency,
                value: controller.executingAgencyFilter.value,
                onChanged: (bool value) {
                  controller.executingAgencyFilter.value = value;
                  controller.check();
                },
              ),
            if (!controller.allFiltered)
              FilterItem(
                title: S.of(context).identificationCode,
                value: controller.idCodeFilter.value,
                onChanged: (bool value) {
                  controller.idCodeFilter.value = value;
                  controller.check();
                },
              ),
            if (!controller.allFiltered)
              FilterItem(
                title: S.of(context).executivePosition,
                value: controller.executingPositionFilter.value,
                onChanged: (bool value) {
                  controller.executingPositionFilter.value = value;
                  controller.check();
                },
              ),
            if (!controller.allFiltered)
              FilterItem(
                title: S.of(context).taskStates,
                value: controller.colorMapFilter.value,
                onChanged: (bool value) {
                  controller.colorMapFilter.value = value;
                  controller.check();
                },
              ),
            // AppButton(
            //   title: S.of(context).back,
            //   color: ColorUtil.primaryColor,
            //   borderRadius: 50.0,
            //   onPressed: () {
            //     controller.innerDrawerKey.currentState.toggle();
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
