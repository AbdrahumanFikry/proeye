import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';

class OtherDescDialogController extends ThemedDialogFormControllerBase {
  final TextEditingController controller;

  OtherDescDialogController._(this.controller);
  @override
  void onConfirm() {
    Get.back(result: true);
  }

  static Future<OtherDescDialogController> showWithController(
      String initialValue) async {
    final controller = OtherDescDialogController._(
      TextEditingController(text: initialValue),
    );
    final res = await ThemedDialogForm<OtherDescDialogController>(
      title: S.current.other,
      controller: controller,
      childBuilder: (controller) {
        return ThemedTextFormField.clean(
          controller: controller.controller,
          hintText: S.current.description,
          borderRadius: 50.0,
          validator: QuickTextValidator(),
        );
      },
    ).showDialog();
    if (res) {
      return controller;
    }
    return null;
  }
}
