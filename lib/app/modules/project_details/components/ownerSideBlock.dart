import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/multi_data_components_view.dart';
import 'package:pro_eye/app/modules/project_details/controllers/project_details_controller.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/generated/l10n.dart';

class OwnerSideBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ownerSide =
        ProjectDetailsController.to?.projectDetails?.value?.ownerCompany;
    if (ownerSide == null) {
      return SizedBox.shrink();
    }
    return ThemedDataViewer(
      title: S.of(context).ownerSide,
      content: ownerSide.name,
      selectable: false,
      onTap: () => Get.toNamed(Routes.COMPANY_DETAILS, arguments: ownerSide),
    );

    // return MultiDataComponentsView(
    //   S.of(context).ownerSide,
    //   ownerSide?.name,
    //   [
    //     ThemedDataViewer(
    //       title: S.of(context).email,
    //       content: ownerSide.email,
    //     ),
    //     ThemedDataViewer(
    //       title: S.of(context).mobile + ' 1 ',
    //       content: ownerSide.phone1,
    //     ),
    //     ThemedDataViewer(
    //       title: S.of(context).mobile + ' 2 ',
    //       content: ownerSide.phone2,
    //     ),
    //     ThemedDataViewer(
    //       title: S.of(context).activity,
    //       content: ownerSide?.activity?.name,
    //     ),
    //     ThemedDataViewer(
    //       title: S.of(context).sector,
    //       content: ownerSide?.section?.name,
    //     ),
    //   ],
    // );
  }
}
