import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/appButton.dart';
import 'package:pro_eye/app/components/appDirectionality.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/modules/extract_details/components/reviewsBlock.dart';
import 'package:pro_eye/app/modules/extract_details/controllers/extract_details_controller.dart';
import 'package:pro_eye/app/modules/extract_details/dialogs/review_extract.dart';
import 'package:pro_eye/app/modules/user_profile_view.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class ExtractDetailsView extends GetView<ExtractDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final extractDetails = controller.extractDetails?.value;

        return GlobalScaffold(
          appBar: GlobalAppBar(
            title: S.of(context).financialDetail,
            enableBack: true,
            attachments: extractDetails?.files?.toList(),
          ),
          body: controller.isBusy.value
              ? Loading()
              : AnimatedListHandler(
                  children: [
                    ThemedDataViewer(
                      title: S.of(context).financialTitle,
                      content: extractDetails?.title,
                    ),
                    ThemedDataViewer(
                      title: S.of(context).description,
                      content: extractDetails?.type,
                    ),
                    ThemedDataViewer(
                      title: S.of(context).financialIssuer,
                      content: extractDetails?.issuer?.nameAr,
                      selectable: false,
                      onTap: () {
                        Get.to(() => UserProfileView(extractDetails.issuer));
                      },
                    ),
                    if (extractDetails?.issuedAt != null)
                      ThemedDataViewer(
                        title: S.of(context).date,
                        content: extractDetails?.issuedAt?.toShortUserString(),
                      ),
                    ReviewsBlock(),
                    if (controller.canReview)
                      Row(
                        children: [
                          Expanded(
                            child: AppButton(
                              title: S.of(context).deny,
                              borderRadius: 50.0,
                              color: ColorUtil.errorColor,
                              textColor: Colors.white,
                              width: Get.width,
                              onPressed: () async {
                                if (await ReviewExtractDialogController.show(
                                    false,
                                    controller.params.projectId,
                                    controller.params.extractId)) {
                                  await controller.fetchSingleExtract();
                                }
                              },
                            ),
                          ),
                          Expanded(
                            child: AppButton(
                              title: S.of(context).confirm,
                              borderRadius: 50.0,
                              color: ColorUtil.primaryColor,
                              width: Get.width,
                              onPressed: () async {
                                if (await ReviewExtractDialogController.show(
                                    true,
                                    controller.params.projectId,
                                    controller.params.extractId)) {
                                  await controller.fetchSingleExtract();
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
        );
      },
    );
  }
}
