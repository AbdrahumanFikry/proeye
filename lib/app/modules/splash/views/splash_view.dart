import 'package:bdaya_custom_splash/bdaya_custom_splash.dart';
import 'package:bdaya_fcm_handler/bdaya_fcm_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pro_eye/app/components/backGroundImage.dart';
import 'package:pro_eye/app/modules/splash/controllers/splash_controller.dart';
import 'package:pro_eye/app/services/chat_service.dart';
import 'package:pro_eye/app/utilities/pathUtil.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return BdayaCustomSplash(
      splashDuration: 4,
      backgroundBuilder: (child) {
        return BackgroundImage(
          powerredByBlock: true,
          child: child,
        );
      },
      initFunction: () async {
        return await controller.initFunction(context);
      },
      logoBuilder: () {
        return Center(
          child: Lottie.asset(
            PathUtil.logoLottiePath,
            height: 600.h,
          ),
        );
      },
      onNavigateTo: (result) async {
        if (result is String) {
          Get.offAllNamed(result);
        } else if (result is MessageRes) {
          Get.offAllNamed(result.route);
          Get.find<ChatService>().handleMessages(
              NotificationSource.OnMessageOpenedApp, result.msg);
        }
      },
    );
  }
}
