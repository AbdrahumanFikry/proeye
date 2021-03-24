import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pro_eye/app/components/appDirectionality.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/modules/chat/components/messageViewer.dart';
import 'package:pro_eye/app/modules/chat/controllers/chat_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class PinnedMessagesView extends GetView<ChatController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      backgroundColor: ColorUtil.backgroundColor,
      appBar: GlobalAppBar(
        title: S.of(context).pinnedMessages,
        enableBack: true,
      ),
      body: Obx(
        () {
          var pinnedMessages = controller.pinnedMessages;
          pinnedMessages.sort((x, y) => x.issuedDate.compareTo(y.issuedDate));
          return Padding(
            padding: EdgeInsets.only(
              top: 8.0,
              right: 8.0,
              left: 8.0,
            ),
            child: ListView.builder(
              itemCount: pinnedMessages.length,
              itemBuilder: (context, position) {
                final msg = pinnedMessages[position];
                return MessageViewer(
                  id: msg.messageId.toString(),
                  changePinState: controller.changePinState,
                  isAdmin: controller.isAdmin,
                  content: msg.content,
                  date: DateFormat.yMMMd().add_jm().format(msg.issuedDate),
                  type: msg.selfOrOther,
                  files: msg.attachments,
                  pinned: true,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
