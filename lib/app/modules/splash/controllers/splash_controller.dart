import 'dart:io';

import 'package:bdaya_fcm_handler/bdaya_fcm_handler.dart';
import 'package:bdaya_repository_pattern/bdaya_repository_pattern.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pro_eye/app/api_interceptors/cache_auth_interceptor.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/services/chat_service.dart';
import 'package:pro_eye/app/services/repos/_cache_service.dart';
import 'package:pro_eye/app/services/user_service.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/api.dart';

class MessageRes {
  String route;
  RemoteMessage msg;

  MessageRes({
    this.route,
    this.msg,
  });
}

class SplashController extends GetxController {
  Future<void> initApi() async {
    await Hive.initFlutter('v2');
    await (Get.put(CacheService())).init();
    final api = Get.put(
      ProeyeApi(
        basePathOverride: baseUrl,
        interceptors: [
          CacheApiKeyAuthInterceptor(),
        ],
        connectTimeoutOverride: 60 * 1000,
        receiveTimeoutOverride: 60 * 1000,
        fileNamesHaveBrackets: false,
      ),
      permanent: true,
    );
    Get.put(UserService());
  }

  Future<Object> initFunction(BuildContext context) async {
    try {
      final currentLang = 'ar';
      await Firebase.initializeApp();
      if (!kIsWeb) {
        await FlutterDownloader.initialize();
      }
      fcmServiceFinder = () => Get.find<FCMService>();

      final msg = await Get.put(FCMService(), permanent: true).doInit(
        requestFunc: () async {
          final settings = await FirebaseMessaging.instance.requestPermission(
            alert: true,
            announcement: false,
            badge: true,
            carPlay: false,
            criticalAlert: false,
            provisional: false,
            sound: true,
          );
          return settings;
        },
        isIosOrMacOs: () => Platform.isIOS || Platform.isMacOS,
      );

      await initApi();
      // await FlutterDownloader.initialize(
      //     debug: true // optional: set false to disable printing logs to console
      //     );
      if (currentLang != null) await S.load(Locale(currentLang));
      final authLogicRes = await CacheService.to.userRepo.initAuthLogic();
      Get.put(ChatService()).init();
      String authedRoute = authLogicRes == true ? Routes.PROJECTS : Routes.AUTH;
      if (msg != null) {
        return MessageRes(msg: msg, route: authedRoute);
      } else {
        return authedRoute;
      }
    } catch (e) {
      AppUtil.showAlertDialog(title: 'خطأ', body: e.toString());
      rethrow;
    }
  }
}
