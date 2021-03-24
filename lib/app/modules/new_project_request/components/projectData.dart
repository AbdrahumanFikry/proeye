import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/themed_text_form_field.dart';
import 'package:pro_eye/app/modules/new_project_request/controllers/new_project_request_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';

class ProjectDataBlock extends GetView<NewProjectRequestController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            S.of(context).projectData,
            style: TextStyle(
              color: ColorUtil.primaryColor,
              fontWeight: FontWeight.w800,
              fontSize: 60.sp,
            ),
          ),
        ),
        ThemedTextFormField(
          title: S.of(context).projectName,
          controller: controller.projectName,
          validator: QuickTextValidator(hasMinLength: 5, isRequired: true),
        ),
        ThemedTextFormField(
          title: S.of(context).projectDescription,
          validator: QuickTextValidator(hasMinLength: 10, isRequired: true),
          controller: controller.projectDescription,
          maxLines: 3,
        ),
        ThemedTextFormField(
          title: S.of(context).notes,
          controller: controller.notes,
          maxLines: 5,
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
