import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/modules/single_project_request_details/controllers/single_project_request_details_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class PublishBlock extends GetView<SingleProjectRequestDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).publish,
            style: TextStyle(
              color: ColorUtil.primaryColor,
              fontWeight: FontWeight.w800,
              fontSize: 60.sp,
            ),
          ),
          Obx(
            () => AnimatedListHandler(
              noScroll: true,
              shrinkWrap: true,
              children: [
                Row(
                  children: [
                    Radio(
                      value: 0,
                      groupValue: controller.publishGroupValue.value,
                      onChanged: controller.publishGroupValue,
                      activeColor: ColorUtil.primaryColor,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Text(
                        S.of(context).directAttribution,
                        style: TextStyle(
                          color: ColorUtil.primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 46.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: controller.publishGroupValue.value,
                      onChanged: controller.publishGroupValue,
                      activeColor: ColorUtil.primaryColor,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Text(
                        S.of(context).tender,
                        style: TextStyle(
                          color: ColorUtil.primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 46.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
