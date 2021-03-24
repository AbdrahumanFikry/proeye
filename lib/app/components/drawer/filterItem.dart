import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/modules/projects/controllers/projects_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';

class FilterItem extends GetView<ProjectsController> {
  final bool value;
  final String title;
  final ValueChanged<bool> onChanged;

  FilterItem({
    this.title,
    this.value = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.5),
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: ColorUtil.primaryColor,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Text(
              title ?? '',
              style: TextStyle(
                color: ColorUtil.primaryColor,
                fontSize: 36.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
