import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/mixins/upload_files_controller_mixin.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class ReviewExtractDialogController extends ThemedDialogFormControllerBase
    with UploadFilesMixin {
  final reviewDescription = TextEditingController();
  final bool isAccepted;
  final String extractId;
  final String projectId;

  ReviewExtractDialogController._({
    @required this.isAccepted,
    @required this.projectId,
    @required this.extractId,
  });

  @override
  void onConfirm() async {
    try {
      startBusy();
      await request<void>(
        api.getExtractsApi().v10ApiProjectsIdExtractsExtractIdReviewPost(
              projectId,
              extractId,
              isAccepted: isAccepted,
              reviewDesc: reviewDescription.text,
              officialRequestFiles:
                  (await prepareFilesToUpload()).toBuiltList(),
            ),
      );
      Get.back(result: true);
      //await fetchSingleExtract();
    } catch (error) {
      AppUtil.showAlertDialog(body: error.toString());
    }
  }

  static Future<bool> show(
    bool isAccepted,
    String projectId,
    String extractId,
  ) {
    var accText = isAccepted ? 'الموافقة على المستخلص' : 'رفض المستخلص';
    return ThemedDialogForm<ReviewExtractDialogController>(
      hasCancel: true,
      title: 'تفاصيل $accText',
      controller: ReviewExtractDialogController._(
        isAccepted: isAccepted,
        projectId: projectId,
        extractId: extractId,
      ),
      childBuilder: (controller) {
        return Column(
          children: [
            ThemedTextFormField(
              title: S.current.reviewStatus,
              readOnly: false,
              controller: controller.reviewDescription,
            ),
            //upload files
            ThemedFilesFormField(
              controller: controller.filesStateController,
              isRequiredNew: false,
            )
          ],
        );
      },
    ).showDialog();
  }
}
