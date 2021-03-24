import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/appButton.dart';
import 'package:pro_eye/app/components/form_fields/themed_date_selector.dart';
import 'package:pro_eye/app/components/form_fields/themed_files_form_field.dart';
import 'package:pro_eye/app/components/form_fields/themed_text_form_field.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/modules/single_technical_report/controllers/single_technical_report_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';

class CreateOnlyReport extends GetView<SingleTechnicalReportController> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: AnimatedListHandler(
        children: [
          ThemedTextFormField(
            title: S.current.reportTitle,
            controller: controller.titleController,
            validator: QuickTextValidator(),
          ),
          ThemedTextFormField(
            title: S.current.reportDesc,
            controller: controller.descController,
            maxLines: 5,
          ),
          ThemedDateSelectorFormField(
            title: S.current.reportDate,
            controller: controller.dateController,
            isRequired: true,
          ),
          ThemedFilesFormField(
            controller: controller.filesStateController,
            isRequiredNew: true,
            canDeleteOld: false,
          ),
          if (controller.isBusy.value)
            Loading()
          else
            AppButton(
              color: ColorUtil.primaryColor,
              textColor: Colors.white,
              title: S.current.confirm,
              onPressed: controller.addReport,
            )
        ],
      ),
    );
  }
}
