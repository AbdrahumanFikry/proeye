import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/waiting.dart';
import 'package:pro_eye/app/modules/chat/controllers/chat_controller.dart';
import 'package:pro_eye/app/modules/chat/dialogs/add_participant.dart';
import 'package:pro_eye/app/modules/user_profile_view.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/pathUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class ParticipantsDetails extends GetView<ChatController> {
  @override
  Widget build(BuildContext context) {
    return controller.roomInfo?.value?.participants == null
        ? SizedBox.shrink()
        : Neumorphic(
            style: NeumorphicStyle(
              depth: -3.0,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(
                  25.0,
                ),
              ),
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            padding: const EdgeInsets.all(10.0),
            child: Obx(
              () {
                return AnimatedListHandler(
                  shrinkWrap: true,
                  noScroll: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              S.of(context).participants,
                              style: TextStyle(
                                color: ColorUtil.primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 56.sp,
                              ),
                            ),
                          ),
                          if (controller.isAdmin)
                            IconButton(
                              icon: Icon(
                                Icons.add,
                                color: ColorUtil.primaryColor,
                                size: 30.0,
                              ),
                              onPressed: () async {
                                if (await AddParticipantDialogController.show(
                                    controller.projectId, controller.roomId)) {
                                  await controller.fetchRoomInfo();
                                }
                              },
                            )
                        ],
                      ),
                    ),
                    if (controller.roomInfo.value?.participants != null)
                      ...controller.roomInfo.value.participants.map(
                        (participant) {
                          final userData = participant?.user;
                          final isAdmin = participant?.isAdmin;
                          return Stack(
                            children: [
                              Waiting(
                                loading: controller.isBusy.value,
                                borderRadius: AppUtil.borderRadius,
                                width: Get.width,
                                margin: EdgeInsets.all(10.0),
                                child: GlobalCard(
                                  margin: EdgeInsets.all(10.0),
                                  borderRadius: AppUtil.borderRadius,
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor:
                                            ColorUtil.backgroundColor,
                                        backgroundImage:
                                            participant?.user?.photoUrl !=
                                                        null &&
                                                    participant
                                                        .user.photoUrl.isBlank
                                                ? CachedNetworkImageProvider(
                                                    userData?.photoUrl,
                                                  )
                                                : AssetImage(
                                                    PathUtil.appIconPath,
                                                  ),
                                        radius: 30.0,
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              userData?.nameAr ?? '',
                                              style: TextStyle(
                                                color: ColorUtil.primaryColor,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 36.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      if (isAdmin)
                                        Text(
                                          S.of(context).admin,
                                          style: TextStyle(
                                            color: ColorUtil.greyColor,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 30.sp,
                                          ),
                                        ),
                                    ],
                                  ),
                                  onTap: () {
                                    Get.to(() => UserProfileView(userData));
                                  },
                                ),
                              ),
                              if (controller.isAdmin)
                                Positioned(
                                  top: 0.0,
                                  left: !AppUtil.isLtr ? 0.0 : null,
                                  right: !AppUtil.isLtr ? null : 0.0,
                                  child: GestureDetector(
                                    onTap: () async {
                                      bool result =
                                          await AppUtil.showAlertDialog(
                                                title: S.of(context).areYouSure,
                                                body: S
                                                    .of(context)
                                                    .removeParticipant(
                                                        participant?.user
                                                                ?.nameAr ??
                                                            ''),
                                                enableCancel: true,
                                              ) ??
                                              false;
                                      if (result &&
                                          participant?.user?.id != null)
                                        await controller.removeParticipant(
                                            participant?.user?.id);
                                    },
                                    child: Icon(
                                      Icons.remove_circle_outlined,
                                      color: ColorUtil.errorColor,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                            ],
                          );
                        },
                      ),
                  ],
                );
              },
            ),
          );
  }
}
