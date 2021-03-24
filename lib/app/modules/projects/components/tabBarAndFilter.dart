import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/toggleText.dart';
import 'package:pro_eye/app/modules/projects/controllers/projects_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/pathUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class TabbarAndFilter extends GetView<ProjectsController> {
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
          title: S.of(context).active,
        ),
        foreground: ToggleText(
          title: S.of(context).active,
          foreground: true,
        ),
      ),
      ToggleElement(
        background: ToggleText(
          title: S.of(context).finished,
        ),
        foreground: ToggleText(
          title: S.of(context).finished,
          foreground: true,
        ),
      ),
      ToggleElement(
        background: ToggleText(
          title: S.of(context).denied,
        ),
        foreground: ToggleText(
          title: S.of(context).denied,
          foreground: true,
        ),
      ),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 15.0,
      ),
      child: Row(
        children: [
          Obx(
            () => Expanded(
              child: NeumorphicToggle(
                height: 45.0,
                padding: const EdgeInsets.all(5.0),
                style: NeumorphicToggleStyle(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                selectedIndex: controller.selectedTab.value,
                children:
                    items, // AppUtil.isLtr ? items : items.reversed.toList(),
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
                  controller.selectedTab.value = value;
                  print("Current projects tab : " +
                      controller.selectedTab.value.toString());
                },
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          NeumorphicButton(
            padding: const EdgeInsets.all(10.0),
            onPressed: () {
              controller.innerDrawerKey.currentState.toggle(
                direction: InnerDrawerDirection.end,
              );
            },
            style: NeumorphicStyle(
              color: ColorUtil.backgroundColor,
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.circle(),
            ),
            child: SvgPicture.asset(
              PathUtil.filterPathSVG,
              color: ColorUtil.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
