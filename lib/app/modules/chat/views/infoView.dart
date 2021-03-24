import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/appDirectionality.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/modules/chat/components/participantsBlock.dart';
import 'package:pro_eye/app/modules/chat/controllers/chat_controller.dart';
import 'package:pro_eye/app/modules/chat/views/pinned_messages_view.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class InfoView extends GetView<ChatController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: GlobalAppBar(
        title: S.of(context).info,
        enableBack: true,
      ),
      backgroundColor: ColorUtil.backgroundColor,
      body: Obx(
        () {
          final info = controller.roomInfo?.value;
          return controller.isBusy.value
              ? Loading()
              : AnimatedListHandler(
                  children: [
                    Neumorphic(
                      style: NeumorphicStyle(
                        depth: -3.0,
                        color: ColorUtil.backgroundColor,
                        boxShape: NeumorphicBoxShape.circle(),
                      ),
                      padding: const EdgeInsets.all(0.0),
                      margin: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Center(
                        child: info?.photoUrl != null
                            ? SizedBox(
                                height: 300.w,
                                width: 300.w,
                                child: Image.network(
                                  info?.photoUrl,
                                  fit: BoxFit.cover,
                                ),
                              )
                            : SizedBox(
                                height: 300.w,
                                width: 300.w,
                                child: Icon(
                                  FontAwesomeIcons.user,
                                  color: ColorUtil.primaryColor,
                                  size: 60.0,
                                ),
                              ),
                      ),
                    ),
                    Text(
                      info?.roomName ?? '',
                      style: TextStyle(
                        color: ColorUtil.primaryColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 46.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    ParticipantsDetails(),
                    GlobalCard(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      borderRadius: AppUtil.borderRadius,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: Text(
                              S.of(context).pinnedMessages,
                              style: TextStyle(
                                color: ColorUtil.primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 46.sp,
                              ),
                            ),
                          ),
                          Text(
                            info?.pinnedMessages?.length?.toString() ?? '0',
                            style: TextStyle(
                              color: ColorUtil.greyColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 46.sp,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        if (info?.pinnedMessages != null) {
                          Get.to(
                            () => PinnedMessagesView(),
                          );
                        }
                      },
                    ),
                  ],
                );
        },
      ),
    );
  }
}
