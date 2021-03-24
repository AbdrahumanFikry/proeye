import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pro_eye/app/components/appButton.dart';
import 'package:pro_eye/app/components/appDirectionality.dart';
import 'package:pro_eye/app/components/form_fields/themed_drop_down_form_field.dart';
import 'package:pro_eye/app/components/form_fields/themed_text_form_field.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/company_activity.dart';
import 'package:proeye_api/model/company_section.dart';

import '../controllers/add_new_agency_controller.dart';

class AddNewAgencyView extends GetView<AddNewAgencyController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: GlobalAppBar(
        title: S.current.addNewGovCompany,
        enableBack: true,
      ),
      body: Form(
        key: controller.formKey,
        child: Obx(
          () => ListView(
            children: [
              ThemedDropDownFormField<bool>(
                listDisplayFunc: (isInMansUniversity) => isInMansUniversity
                    ? 'داخل جامعة المنصورة'
                    : 'خارج جامعة المنصورة',
                items: [
                  true,
                  false,
                ],
                isRequired: true,
                controller: controller.isInMansouraUniversity,
                bigHeader: true,
                title: 'مكان الجهة',
              ),
              //agencyName
              ThemedTextFormField(
                title: S.of(context).agencyName,
                controller: controller.agencyName,
                validator: QuickTextValidator(),
              ),
              //phone1
              ThemedTextFormField(
                title: S.of(context).phone1,
                controller: controller.phone1Controller,
                validator: QuickTextValidator(isPhone: true),
                keyBoardType: TextInputType.phone,
              ),
              //phone2
              ThemedTextFormField(
                title: S.of(context).phone2,
                controller: controller.phone2Controller,
                validator: QuickTextValidator(
                  isPhone: true,
                  isRequired: false,
                ).validate,
                keyBoardType: TextInputType.phone,
              ),
              //email
              ThemedTextFormField(
                title: S.of(context).email,
                controller: controller.emailController,
                validator: QuickTextValidator(
                  isEmail: true,
                  isRequired: false,
                ).validate,
                keyBoardType: TextInputType.emailAddress,
              ),
              //address
              ThemedTextFormField(
                title: S.of(context).address,
                controller: controller.addressController,
              ),
              //fax
              ThemedTextFormField(
                title: "فاكس",
                controller: controller.fax,
                validator: QuickTextValidator(
                  isRequired: false,
                  isPhone: true,
                ).validate,
                keyBoardType: TextInputType.phone,
              ),
              //section
              ThemedDropDownFormField<CompanySection>(
                title: S.of(context).sector,
                bigHeader: true,
                controller: controller.section,
                items: controller.allSections.toList(),
                isBusy: controller.sectionLoading.value,
                listDisplayFunc: (s) => s.name,
                onChanged: (CompanySection value) {
                  print('Section selected : ' + value.name);
                },
                isRequired: true,
              ),
              //activity
              ThemedDropDownFormField<CompanyActivity>(
                title: S.of(context).activity,
                bigHeader: true,
                controller: controller.activity,
                isBusy: controller.activitiesLoading.value,
                items: controller.allActivities.toList(),
                listDisplayFunc: (s) => s.name,
                onChanged: (CompanyActivity value) {
                  print('Activity selected : ' + value.name);
                },
                isRequired: true,
              ),
              ThemedTextFormField(
                title: S.of(context).notes,
                controller: controller.notes,
                maxLines: 5,
              ),
              controller.isBusy.value
                  ? Loading()
                  : AppButton(
                      title: S.of(context).create,
                      borderRadius: 50.0,
                      color: ColorUtil.primaryColor,
                      width: Get.width,
                      onPressed: () async {
                        await controller.addNewAgency();
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
