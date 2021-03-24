import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/appButton.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_eye/generated/l10n.dart';

abstract class ThemedDialogFormControllerBase extends GetxController
    with ApiMixin, BusyMixin {
  /// don't forget to call
  /// ```dart
  /// Get.back(result: true);
  /// ```
  void onConfirm();
}

class ThemedDialogForm<T extends ThemedDialogFormControllerBase>
    extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final Widget Function(T controller) childBuilder;
  final T controller;
  final String title;
  final bool hasCancel;
  ThemedDialogForm({
    Key key,
    @required this.childBuilder,
    @required this.controller,
    @required this.title,
    this.hasCancel = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 10.0,
      backgroundColor: Colors.white,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20.0),
      contentPadding: const EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      content: SingleChildScrollView(
        child: Directionality(
          textDirection: AppUtil.isLtr ? TextDirection.ltr : TextDirection.rtl,
          child: Neumorphic(
            style: NeumorphicStyle(
              color: ColorUtil.backgroundColor,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(20.0),
              ),
            ),
            child: Obx(
              () {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Neumorphic(
                      style: NeumorphicStyle(
                        color: ColorUtil.errorColor,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 42.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      child: Center(
                        child: Form(
                          key: formKey,
                          child: childBuilder(controller),
                        ),
                      ),
                    ),
                    if (controller.hasError)
                      Text(
                        controller.errorMessage.value,
                        style: TextStyle(
                          color: ColorUtil.errorColor,
                        ),
                      ),
                    controller.isBusy.value
                        ? Loading()
                        : Row(
                            children: [
                              Expanded(
                                child: AppButton(
                                  title: S.current.confirm,
                                  color: ColorUtil.primaryColor,
                                  borderRadius: 50.0,
                                  onPressed: () {
                                    if (formKey.currentState == null) return;
                                    if (formKey.currentState.validate()) {
                                      formKey.currentState.save();
                                      controller.onConfirm();
                                    }
                                  },
                                ),
                              ),
                              if (hasCancel) ...[
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.back(result: null);
                                    },
                                    child: Text(
                                      S.current.cancel,
                                      style: TextStyle(
                                        fontSize: 50.sp,
                                        color: ColorUtil.primaryColor,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                              ],
                            ],
                          ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> showDialog({bool barrierDismissible = false}) async {
    return (await Get.dialog<bool>(
          this,
          barrierDismissible: barrierDismissible,
        )) ??
        false;
  }
}
