import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/modules/chat/bindings/chat_binding.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/pathUtil.dart';
import 'package:proeye_api/model/project_chat_room_abstract_vm.dart';

class RoomCard extends StatelessWidget {
  final String projectId;
  final ProjectChatRoomAbstractVM room;

  RoomCard({
    @required this.room,
    @required this.projectId,
  });

  @override
  Widget build(BuildContext context) {
    return GlobalCard(
      onTap: () {
        print('RoomId : ${room.roomId}');
        if (room.roomId != null) {
          Get.toNamed(
            Routes.CHAT,
            arguments: ChatRouteInputs(
              roomId: room.roomId,
              projectId: projectId,
              roomName: room.roomName,
            ),
          );
        }
      },
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: ColorUtil.backgroundColor,
            backgroundImage: room.photoUrl == null
                ? AssetImage(
                    PathUtil.appIconPath,
                  )
                : NetworkImage(
                    room.photoUrl,
                  ),
            radius: 30.0,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Text(
              room?.roomName ?? '',
              style: TextStyle(
                color: ColorUtil.primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 60.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
