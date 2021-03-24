import 'package:flutter/material.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddParticipantDialogController extends ThemedDialogFormControllerBase {
  final participantIsAdmin = false.obs;
  final idController = TextEditingController();

  final String projectId;
  final String roomId;

  AddParticipantDialogController._({
    @required this.projectId,
    @required this.roomId,
  });
  @override
  void onConfirm() async {
    print('ParticipantId : ${idController.text}');
    try {
      startBusy();
      await request(
        api.getChatApi().v10ApiChatRoomProjectIdRoomIdInviteParticipantPut(
              projectId,
              roomId,
              targetId: idController.text,
              isAdmin: participantIsAdmin.value ?? false,
            ),
      );
      endBusySuccess();
      Get.back(result: true);
    } catch (error) {
      endBusyError(error.toString());
    }
  }

  static Future<bool> show(String projectId, String roomId) async {
    final res = await ThemedDialogForm<AddParticipantDialogController>(
      controller: AddParticipantDialogController._(
        projectId: projectId,
        roomId: roomId,
      ),
      title: S.current.addParticipant,
      childBuilder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ThemedTextFormField.clean(
              controller: controller.idController,
              hintText: S.current.nationalId,
              readOnly: false,
              borderRadius: 50.0,
              keyBoardType: TextInputType.number,
              validator: QuickTextValidator(isNationalId: true),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 7.5,
              ),
              child: Row(
                children: [
                  Checkbox(
                    hoverColor: ColorUtil.primaryColor,
                    checkColor: Colors.white,
                    activeColor: ColorUtil.primaryColor,
                    focusColor: ColorUtil.primaryColor,
                    value: controller.participantIsAdmin.value,
                    onChanged: controller.participantIsAdmin,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    S.current.admin,
                    style: TextStyle(
                      color: ColorUtil.primaryColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 36.sp,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        );
      },
      hasCancel: true,
    ).showDialog();
    return res ?? false;
  }
}
