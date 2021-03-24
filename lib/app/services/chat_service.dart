import 'dart:convert';

import 'package:bdaya_fcm_handler/bdaya_fcm_handler.dart';
import 'package:built_value/serializer.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/modules/chat/bindings/chat_binding.dart';
import 'package:pro_eye/app/modules/chat/controllers/chat_controller.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/message_view_model.dart';
import 'package:proeye_api/model/signal_r_message_vm.dart';
import 'package:proeye_api/serializers.dart';

class ChatService extends GetxService {
  void handleMessages(NotificationSource src, RemoteMessage message) {
    if (message.data != null) {
      var msg = standardSerializers.deserialize(jsonDecode(message.data['*']),
          specifiedType: const FullType(SignalRMessageVM)) as SignalRMessageVM;
      var controller = Get.isRegistered<ChatController>()
          ? Get.find<ChatController>()
          : null;

      if (controller != null && controller.roomId == msg.chatRoomId) {
        controller.provideMessage(
          (MessageViewModelBuilder()
                ..messageId = msg.messageId
                ..attachments = msg.attachments.toBuilder()
                ..content = msg.content
                ..issuedDate = msg.issuedDate
                ..issuerName = msg.issuerName
                ..issuerId = msg.issuerId
                ..isPinned = msg.isPinned
                ..selfOrOther = msg.selfOrOther)
              .build(),
        );
      } else {
        void doNav() {
          Get.toNamed(
            Routes.CHAT,
            arguments: ChatRouteInputs(
              roomId: msg.chatRoomId,
              projectId: msg.projectId,
              roomName: S.current.roomName,
            ),
          );
        }

        if (src != NotificationSource.OnMessageOpenedApp) {
          Get.snackbar(
            'رسالة جديدة',
            msg.content,
            onTap: (snack) {
              doNav();
              print('clicked Notif');
            },
            duration: Duration(seconds: 3),
          );
        } else {
          doNav();
        }
      }
    }
  }

  void init() {
    Get.find<FCMService>().registerSubscriber(handleMessages);
  }
}
