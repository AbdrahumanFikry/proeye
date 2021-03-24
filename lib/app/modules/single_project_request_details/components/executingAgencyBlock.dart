import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/appButton.dart';
import 'package:pro_eye/app/components/form_fields/themed_dialog_based_selection.dart';
import 'package:pro_eye/app/components/form_fields/themed_drop_down_form_field.dart';
import 'package:pro_eye/app/modules/single_project_request_details/controllers/single_project_request_details_controller.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/execution_company_view_model.dart';

class ExecutingAgencyBlock
    extends GetView<SingleProjectRequestDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).executingAgency,
            style: TextStyle(
              color: ColorUtil.primaryColor,
              fontWeight: FontWeight.w800,
              fontSize: 60.sp,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          ThemedDialogBasedSelectionFormField<ExecutionCompanyViewModel>(
            title: S.of(context).executingAgency,
            controller: controller.executionCompany,
            selectedDisplayFunc: (a) => a?.name ?? '',
            onTap: (state) async {
              final company = await Get.toNamed(
                      Routes.SINGLE_PROJECT_REQUEST_DETAILS_SELECT_EXEC_COMPANY)
                  as ExecutionCompanyViewModel;
              if (company != null) {
                state.didChange(company);
              }
            },
            isRequired: true,
          ),
        ],
      ),
    );
  }
}
