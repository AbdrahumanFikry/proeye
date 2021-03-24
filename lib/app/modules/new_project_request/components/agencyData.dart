import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/themed_dialog_based_selection.dart';
import 'package:pro_eye/app/modules/new_project_request/controllers/new_project_request_controller.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/gov_company_view_model.dart';

class AgencyDataBlock extends GetView<NewProjectRequestController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            S.of(context).agencyData,
            style: TextStyle(
              color: ColorUtil.primaryColor,
              fontWeight: FontWeight.w800,
              fontSize: 60.sp,
            ),
          ),
        ),
        ThemedDialogBasedSelectionFormField<GovCompanyViewModel>(
          title: S.of(context).ownerSide,
          controller: controller.destinationAgency,
          selectedDisplayFunc: (a) => a?.name ?? '',
          onTap: (state) async {
            final company =
                await Get.toNamed(Routes.NEW_PROJECT_REQUEST_SELECT_GOV_COMPANY)
                    as GovCompanyViewModel;
            if (company != null) {
              state.didChange(company);
            }
          },
          isRequired: true,
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
