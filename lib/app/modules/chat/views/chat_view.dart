import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/filtered_paginated_list_int.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/modules/chat/components/messageHandler.dart';
import 'package:pro_eye/app/modules/chat/components/messageViewer.dart';
import 'package:pro_eye/app/modules/chat/controllers/chat_controller.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/message_view_model.dart';
import 'package:proeye_api/model/self_or_other_enum.dart';

class ChatView extends GetView<ChatController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: GlobalAppBar(
        title: controller.roomName ?? S.of(context).chat,
        enableBack: true,
        enableInfo: true,
      ),
      backgroundColor: ColorUtil.backgroundColor,
      body: Column(
        children: <Widget>[
          Expanded(
            child: IntFilteredPaginatedList<MessageViewModel>(
              reverse: true,
              onControllerInit: (pagingController) =>
                  controller.pagingController = pagingController,
              pageRequestListener: controller.fetchMessages,
              itemBuilder: (context, item, index) {
                return MessageViewer(
                  id: item.messageId,
                  changePinState: controller.changePinState,
                  isAdmin: controller.isAdmin,
                  content: item.content,
                  date: item.issuedDate.toLongUserString(),
                  files: item.attachments,
                  pinned: item.isPinned,
                  sender: item.selfOrOther == SelfOrOtherEnum.self
                      ? ''
                      : (item.issuerName ?? item.issuerId),
                  type: item.selfOrOther,
                );
              },
            ),
          ),
          MessageHandler(),
        ],
      ),
    );
  }
}
