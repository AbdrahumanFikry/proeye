import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:pro_eye/app/components/circleButton.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/modules/chat/controllers/chat_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class MessageHandler extends GetView<ChatController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ThemedFilesFormField(
          controller: controller.filesStateController,
          enabled: !controller.isBusy.value,
          canDeleteOld: false,
          isRequiredAny: false,
          isRequiredNew: false,
        ),
        Container(
          height: 70,
          width: double.infinity,
          color: ColorUtil.backgroundColor,
          child: Row(
            textDirection: TextDirection.ltr,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleButton(
                onPressed: () async {
                  await controller.pickFiles();
                },
                margin: EdgeInsets.only(
                  left: 10.0,
                ),
                child: Icon(
                  FontAwesomeIcons.plus,
                  color: ColorUtil.primaryColor,
                  size: 20.0,
                ),
              ),
              Expanded(
                child: Obx(
                  () => ThemedTextFormField.clean(
                    controller: controller.messageController,
                    isBusy: controller.isBusy.value,
                    hintText: S.of(context).typeMessage,
                    borderRadius: 50.0,
                  ),
                ),
              ),
              Obx(
                () => CircleButton(
                  onPressed: !controller.isBusy.value
                      ? () async {
                          await controller.onSend();
                        }
                      : null,
                  margin: EdgeInsets.only(
                    right: 10.0,
                  ),
                  child: Icon(
                    FontAwesomeIcons.paperPlane,
                    color: ColorUtil.primaryColor,
                    size: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
