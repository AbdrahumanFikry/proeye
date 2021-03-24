import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';

class AttachmentsControllerRouteParams {
  final Rx<FilesState> controller;
  final bool isMulti;
  final FileType fileType;
  final bool canDeleteOld;
  final bool enabled;
  AttachmentsControllerRouteParams({
    @required this.canDeleteOld,
    @required this.enabled,
    this.isMulti,
    this.fileType,
    @required this.controller,
  });
}

class AttachmentsController extends GetxController {
  final AttachmentsControllerRouteParams params;
  static final _picker = ImagePicker();

  AttachmentsController(this.params);

  static Future<void> pickFilesStatic(
      AttachmentsControllerRouteParams params) async {
    try {
      final dialogRes = await Get.bottomSheet<bool>(
        CupertinoActionSheet(
          title: Text(
            'الرجاء اختيار المصدر',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          cancelButton: CupertinoActionSheetAction(
            child: Text(
              'إلغاء',
              style: TextStyle(
                fontSize: 24,
                color: ColorUtil.errorColor,
              ),
            ),
            onPressed: () => Get.back(result: null),
          ),
          actions: [
            CupertinoActionSheetAction(
              child: Text(
                'كاميرا',
                style: TextStyle(
                  fontSize: 24,
                  color: ColorUtil.primaryColor,
                ),
              ),
              onPressed: () => Get.back(result: true),
            ),
            CupertinoActionSheetAction(
              child: Text(
                'ملف',
                style: TextStyle(
                  fontSize: 24,
                  color: ColorUtil.primaryColor,
                ),
              ),
              onPressed: () => Get.back(result: false),
            ),
          ],
          // child: Directionality(
          //   textDirection:
          //       AppUtil.isLtr ? TextDirection.ltr : TextDirection.rtl,
          //   child: Column(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [
          //       MaterialButton(
          //         child: Text(
          //           'كاميرا',
          //           style: TextStyle(
          //             fontSize: 24,
          //           ),
          //         ),
          //         onPressed: () {
          //           Get.back(result: true);
          //         },
          //       ),
          //       MaterialButton(
          //         child: Text(
          //           'ملف',
          //           style: TextStyle(
          //             fontSize: 24,
          //           ),
          //         ),
          //         onPressed: () {
          //           Get.back(result: false);
          //         },
          //       ),
          //     ],
          //   ),
          // ),
        ),
      );
      if (dialogRes == null) return;
      if (dialogRes) {
        //camera

        final _image = await _picker.getImage(source: ImageSource.camera);
        if (_image == null) {
          return;
        }
        params.controller.value =
            params.controller.value.addUploadFile(_image.path);
      } else {
        //file

        final result = await FilePicker.platform.pickFiles(
          type: params.fileType,
          allowMultiple: params.isMulti,
        );

        if (result != null && result.count > 0) {
          params.controller.value =
              params.controller.value.addUploadFiles(result.paths);
        }
      }
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    } catch (error) {
      AppUtil.showAlertDialog(body: error.toString());
    }
  }

  Future<void> pickFiles() async {
    await pickFilesStatic(params);
  }
}
