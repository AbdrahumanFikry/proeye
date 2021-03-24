import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/modules/auth/controllers/auth_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/pathUtil.dart';

class ProfileImage extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.only(
          top: controller.isFirstTime.value == true ? 20 : 150.h,
          bottom: controller.isFirstTime.value == true ? 50.h : 150.h,
        ),
        child: (controller.isFirstTime.value == true)
            ? NeumorphicButton(
                onPressed: () => controller.pickFiles(isMulti: false),
                style: NeumorphicStyle(
                  depth: -3.0,
                  color: ColorUtil.backgroundColor,
                  boxShape: NeumorphicBoxShape.circle(),
                ),
                padding: const EdgeInsets.all(0.0),
                child: SizedBox(
                  height: Get.width / 3,
                  width: Get.width / 3,
                  child: FittedBox(
                    child: controller.filesToUpload.length == 0
                        ? SizedBox(
                            height: Get.width / 3,
                            width: Get.width / 3,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Image.asset(
                                    PathUtil.appIconPath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned.fill(
                                  child: Icon(
                                    Icons.camera,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Image.file(
                            controller.firstOrDefaultFile,
                            fit: BoxFit.cover,
                            width: Get.width / 3,
                            height: Get.width / 3,
                          ),
                  ),
                ),
              )
            : Center(
                child: Image.asset(
                  PathUtil.appIconPath,
                  height: 300.h,
                  fit: BoxFit.cover,
                ),
              ),
      ),
    );
  }
}
