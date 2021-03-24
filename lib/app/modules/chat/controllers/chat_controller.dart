import 'dart:async';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/components/mixins/upload_files_controller_mixin.dart';
import 'package:pro_eye/app/services/user_service.dart';
import 'package:proeye_api/model/message_view_model.dart';
import 'package:proeye_api/model/project_chat_room_vm.dart';
import 'package:proeye_api/model/self_or_other_enum.dart';

class ChatController extends GetxController
    with ApiMixin, BusyMixin, UploadFilesMixin {
  final String roomId;
  final String projectId;
  final String roomName;

  int get daysDuration => 2;

  final messageController = TextEditingController();
  final roomInfo = Rx<ProjectChatRoomVM>();

  ChatController({
    @required this.roomId,
    @required this.projectId,
    @required this.roomName,
  });

  bool get isAdmin {
    final currentUserId = UserService.to.currentUser?.value?.id;
    return roomInfo.value?.participants
            ?.any((x) => x.isAdmin && x.user.id == currentUserId) ??
        false;
  }

  PagingController<int, MessageViewModel> pagingController;
  void provideMessage(MessageViewModel message) {
    if (pagingController == null) return;
    // if (messageIds.contains(message.messageId)) return;
    var oldVal = pagingController.value;
    if (oldVal.itemList.any((x) => x.messageId == message.messageId)) return;
    pagingController.value = PagingState<int, MessageViewModel>(
      itemList: oldVal.itemList.toList()..insert(0, message),
      nextPageKey: oldVal.nextPageKey,
    );
  }

  List<MessageViewModel> get pinnedMessages =>
      roomInfo.value.pinnedMessages.toList();

  Future<void> fetchRoomInfo() async {
    try {
      startBusy();
      roomInfo.value = await request<ProjectChatRoomVM>(
        api.getChatApi().v10ApiChatRoomProjectIdRoomIdGet(
              projectId,
              roomId,
            ),
      );
      endBusySuccess();
    } catch (error) {
      endBusyError(error.toString());
    }
  }

  Future<void> fetchMessages(
    PagingController<int, MessageViewModel> pagingController,
    int pageIndex,
  ) async {
    try {
      final resp = await request(
        api.getChatApi().v10ApiChatRoomProjectIdRoomIdMessagesGet(
              projectId,
              roomId,
              pageIndex: pageIndex,
              pageSize: 5,
              isPinned: false,
            ),
      );
      if (resp.hasNextPage) {
        pagingController.appendPage(resp.page.toList(), pageIndex + 1);
      } else {
        pagingController.appendLastPage(resp.page.toList());
      }
    } catch (error) {
      endBusyError(error.toString());
    }
  }

  Future<void> onSend() async {
    if (messageController.text.isNotEmpty) {
      try {
        startBusy();
        final messageResponse = await request<MessageViewModel>(
          api.getChatApi().v10ApiChatRoomProjectIdRoomIdMessagesSendMessagePost(
                projectId,
                roomId,
                content: messageController.text,
                officialRequestFiles:
                    (await prepareFilesToUpload()).toBuiltList(),
              ),
        );
        var res = messageResponse.toBuilder()
          ..selfOrOther = SelfOrOtherEnum.self;
        provideMessage(res.build());
        endBusySuccess();
        messageController.text = '';
        filesStateController.value = filesStateController.value.resetAll();
      } catch (error) {
        endBusyError(error.toString(), showDialog: true);
      }
    }
  }

  Future<void> changePinState(bool pinned, String messageId) async {
    try {
      startBusy();
      await request(
        api
            .getChatApi()
            .v10ApiChatRoomProjectIdRoomIdMessagesMessageIdChangePinPut(
              projectId,
              roomId,
              messageId,
              isPinned: pinned,
            ),
      );
      endBusySuccess();
      await fetchRoomInfo();
    } catch (error) {
      endBusyError(error.toString(), showDialog: true);
    }
  }

  Future<void> removeParticipant(String participantId) async {
    try {
      startBusy();
      await request(
        api
            .getChatApi()
            .v10ApiChatRoomProjectIdRoomIdKickParticipantTargetIdPut(
              projectId,
              roomId,
              participantId,
            ),
      );
      endBusySuccess();
      await fetchRoomInfo();
    } catch (error) {
      endBusyError(error.toString());
    }
  }

  @override
  void onReady() async {
    super.onReady();
    fetchRoomInfo();
  }

  @override
  void onClose() {
    messageController.dispose();
    super.onClose();
  }
}
