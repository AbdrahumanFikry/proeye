import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/components/mixins/upload_files_controller_mixin.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:proeye_api/model/project_chat_room_abstract_vm.dart';

class RoomsController extends GetxController
    with ApiMixin, BusyMixin, UploadFilesMixin {
  final String projectId;
  final roomsLoading = false.obs;
  final allRooms = <String, ProjectChatRoomAbstractVM>{}.obs;
  GlobalKey<FormState> newRoomFormKey = GlobalKey();
  GlobalKey<FormState> newParticipantFormKey = GlobalKey();
  TextEditingController participantIdController = TextEditingController();
  final newParticipantsLoading = false.obs;
  final participantIsAdmin = false.obs;

  RoomsController(this.projectId);

  static RoomsController get to => Get.find();

  Future<void> fetchRooms() async {
    roomsLoading.value = true;
    print('ProjectId: $projectId');
    try {
      BuiltList<ProjectChatRoomAbstractVM> resp =
          await request<BuiltList<ProjectChatRoomAbstractVM>>(
        api.getChatApi().v10ApiChatRoomProjectIdGet(
              projectId,
            ),
      );
      if (resp != null) {
        allRooms.addAll(
            Map.fromEntries(resp.map((x) => MapEntry(x.roomId.toString(), x))));
      }
      print('Rooms : ${allRooms.values.toList()}');
    } catch (error) {
      AppUtil.showAlertDialog(body: error.toString());
    }
    roomsLoading.value = false;
  }

  Future<void> addNewParticipants(String roomId) async {
    newParticipantsLoading.value = true;
    print('ParticipantId : ${participantIdController.text}');
    try {
      final formData = newParticipantFormKey.currentState;
      if (formData.validate()) {
        formData.save();
        await request(
          api.getChatApi().v10ApiChatRoomProjectIdRoomIdInviteParticipantPut(
                projectId,
                roomId,
                targetId: participantIdController.text,
                isAdmin: participantIsAdmin.value ?? false,
              ),
        );
        participantIdController.clear();
        participantIsAdmin.value = false;
        await fetchRooms();
        Get.back();
      }
    } catch (error) {
      AppUtil.showAlertDialog(body: error.toString());
    }
    newParticipantsLoading.value = false;
  }

  @override
  void onReady() {
    super.onReady();
    fetchRooms();
  }
}
