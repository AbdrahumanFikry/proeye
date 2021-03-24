import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/appDirectionality.dart';
import 'package:pro_eye/app/components/emptyWidget.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/modules/rooms/components/roomCard.dart';
import 'package:pro_eye/app/modules/rooms/components/screenDialog.dart';
import 'package:pro_eye/app/modules/rooms/controllers/rooms_controller.dart';
import 'package:pro_eye/app/modules/rooms/dialogs/add_room_dialog.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/project_chat_room_abstract_vm.dart';

class RoomsView extends GetView<RoomsController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      //backgroundColor: ColorUtil.backgroundColor,
      appBar: GlobalAppBar(
        title: S.of(context).groups,
        enableBack: true,
      ),
      body: Obx(
        () {
          var allRooms = controller.allRooms?.values?.toList() ??
              <ProjectChatRoomAbstractVM>[];
          if (controller.roomsLoading.value) {
            return Loading();
          } else {
            return AnimatedListHandler(
              onRefresh: controller.fetchRooms,
              children: allRooms
                  .map(
                    (x) => RoomCard(
                      projectId: controller.projectId,
                      room: x,
                    ),
                  )
                  .toList(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: ColorUtil.primaryColor,
        elevation: 10.0,
        tooltip: S.of(context).addNewRoom,
        onPressed: () async {
          if (await AddRoomDialog(controller.projectId).show()) {
            controller.fetchRooms();
          }
        },
        label: Text('إضافة غرفة جديدة'),
        icon: Icon(
          FontAwesomeIcons.plus,
          color: Colors.white,
        ),
      ),
    );
  }
}
