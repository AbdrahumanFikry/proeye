import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pro_eye/app/components/appButton.dart';
import 'package:pro_eye/app/components/form_fields/themed_text_form_field.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';

import '../controllers/add_new_execution_agency_controller.dart';

class AddNewExecutionAgencyView
    extends GetView<AddNewExecutionAgencyController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: GlobalAppBar(
        title: S.current.addNewExecutionCompany,
        enableBack: true,
      ),
      body: Form(
        key: controller.formKey,
        child: Obx(
          () => ListView(
            children: [
              //اسم الجهة المنفذة
              ThemedTextFormField(
                title: S.of(context).agencyName,
                controller: controller.agencyName,
                validator: QuickTextValidator(
                  isRequired: true,
                ).validate,
              ),
              //رقم التليفون 1
              ThemedTextFormField(
                title: S.of(context).phone1,
                controller: controller.phone1Controller,
                validator: QuickTextValidator(
                  isRequired: true,
                  isPhone: true,
                ).validate,
                keyBoardType: TextInputType.phone,
              ),
              //رقم التليفون 2
              ThemedTextFormField(
                title: S.of(context).phone2,
                controller: controller.phone2Controller,
                validator: QuickTextValidator(
                  isRequired: false,
                  isPhone: true,
                ).validate,
                keyBoardType: TextInputType.phone,
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
              //email
              ThemedTextFormField(
                title: S.of(context).email,
                controller: controller.emailController,
                validator: QuickTextValidator(
                  isRequired: false,
                  isEmail: true,
                ),
                keyBoardType: TextInputType.emailAddress,
              ),
              ThemedTextFormField(
                title: S.of(context).address,
                controller: controller.addressController,
              ),
              //السجل التجاري
              ThemedTextFormField(
                title: S.of(context).commercialRecord,
                controller: controller.commercialRecord,
                validator: QuickTextValidator(
                  isRequired: true,
                ).validate,
              ),
              //الشريحة الهندسية
              ThemedTextFormField(
                title: S.of(context).engineeringSlot,
                controller: controller.engineeringSlot,
                validator: QuickTextValidator(
                  isRequired: true,
                ).validate,
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
                      onPressed: controller.addNewExecutionCompany,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
