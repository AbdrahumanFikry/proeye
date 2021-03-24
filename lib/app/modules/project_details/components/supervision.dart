import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/appButton.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/modules/project_details/controllers/project_details_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class SupervisionBlock extends GetView<ProjectDetailsController> {
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
            S.of(context).supervisionStatues,
            style: TextStyle(
              color: ColorUtil.primaryColor,
              fontWeight: FontWeight.w800,
              fontSize: 60.sp,
            ),
          ),
          Obx(
            () {
              final canSubmit = controller.projectDetails.value
                      .isSupervisedByEngManagementDirector ==
                  null;
              return AnimatedListHandler(
                noScroll: true,
                shrinkWrap: true,
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 0,
                        groupValue: controller.supervisionGroupVal.value,
                        onChanged: canSubmit
                            ? controller.onChangedSupervisionRadio
                            : null,
                        activeColor: ColorUtil.primaryColor,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Text(
                          S.of(context).supervision,
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
                        groupValue: controller.supervisionGroupVal.value,
                        onChanged: canSubmit
                            ? controller.onChangedSupervisionRadio
                            : null,
                        activeColor: ColorUtil.primaryColor,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Text(
                          S.of(context).donNotSupervision,
                          style: TextStyle(
                            color: ColorUtil.primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 46.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   children: [
                  //     AppButton(
                  //       title: S.of(context).uploadFiles,
                  //       borderRadius: 50.0,
                  //       width: Get.width * 0.37,
                  //       onPressed: () async =>
                  //       await controller.uploadFiles(),
                  //     ),
                  //     Expanded(
                  //       child: FilesViewer(),
                  //     ),
                  //   ],
                  // ),
                  if (canSubmit)
                    controller.isBusy.value
                        ? Loading()
                        : AppButton(
                            title: S.of(context).confirm,
                            borderRadius: 50.0,
                            color: ColorUtil.primaryColor,
                            width: Get.width,
                            onPressed: () async => await controller.supervise(),
                          ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
