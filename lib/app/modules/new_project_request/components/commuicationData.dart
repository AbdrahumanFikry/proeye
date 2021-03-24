import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/themed_drop_down_form_field.dart';
import 'package:pro_eye/app/components/form_fields/themed_text_form_field.dart';
import 'package:pro_eye/app/models/presenterRelation.dart';
import 'package:pro_eye/app/modules/new_project_request/controllers/new_project_request_controller.dart';
import 'package:pro_eye/app/modules/new_project_request/dialogs/other_desc_dialog.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/company_user_relation_types_enum.dart';

class CommunicationDataBlock extends GetView<NewProjectRequestController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            S.of(context).sidePresenter,
            style: TextStyle(
              color: ColorUtil.primaryColor,
              fontWeight: FontWeight.w800,
              fontSize: 60.sp,
            ),
          ),
        ),
        ThemedTextFormField(
          title: S.of(context).officialMail,
          readOnly: false,
          controller: controller.officialEmail,
          keyBoardType: TextInputType.emailAddress,
          validator: QuickTextValidator(isEmail: true),
        ),
        ThemedTextFormField(
          title: S.of(context).mangerNameOr,
          readOnly: false,
          controller: controller.mangerName,
          validator: QuickTextValidator(),
        ),
        ThemedTextFormField(
          title: S.of(context).mangerMobileOr,
          readOnly: false,
          controller: controller.mangerMobile,
          keyBoardType: TextInputType.phone,
          validator: QuickTextValidator(isPhone: true, isRequired: true),
        ),
        ThemedTextFormField(
          title: S.of(context).phone,
          readOnly: false,
          controller: controller.mangerPhone,
          keyBoardType: TextInputType.phone,
          validator: QuickTextValidator(isPhone: true, isRequired: false),
        ),
        ThemedDropDownFormField<PresenterRelation>(
          title: S.of(context).presenterRelation,
          bigHeader: true,
          controller: controller.relation,
          items: controller.allRelations,
          isRequired: true,
          selectedDisplayFunc: (r) {
            if (r == null) return '-';
            return r.relationTypesEnum == CompanyUserRelationTypesEnum.other
                ? ((controller.otherDesc.text.isEmpty
                        ? r.title
                        : controller.otherDesc.text) ??
                    r.title)
                : r.title;
          },
          listDisplayFunc: (r) => r.title,
          extraValidator: (r) {
            if (r.relationTypesEnum == CompanyUserRelationTypesEnum.other) {
              if (controller.otherDesc.text.isEmpty) {
                return 'برجاء إدخال وصف ممثل الجهة المالكة';
              }
            }
            return null;
          },
          onChanged: (PresenterRelation value) async {
            if (value.relationTypesEnum == CompanyUserRelationTypesEnum.other) {
              final res = await OtherDescDialogController.showWithController(
                  controller.otherDesc.text);
              if (res != null) {
                controller.otherDesc.text = res.controller.text;
              }
            }
            print('Relation selected : ' + value.title);
          },
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
