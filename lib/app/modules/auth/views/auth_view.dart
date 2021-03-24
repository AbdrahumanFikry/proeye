import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/appButton.dart';
import 'package:pro_eye/app/components/form_fields/themed_text_form_field.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/modules/auth/components/profileImage.dart';
import 'package:pro_eye/app/modules/auth/controllers/auth_controller.dart';
import 'package:pro_eye/app/services/appService.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/pathUtil.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';

class AuthView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      useBackgroundImage: true,
      usePoweredBy: false,
      body: Obx(
        () => Form(
          key: controller.authFormKey,
          child: ListView(
            children: [
              ProfileImage(),
              //nationalId
              if (controller.isFirstTime.value == null)
                ThemedTextFormField.clean(
                  hintText: S.of(context).nationalId,
                  borderRadius: 50.0,
                  suffixWidget: SvgPicture.asset(
                    PathUtil.idPathSVG,
                    height: 50.h,
                    color: ColorUtil.primaryColor,
                  ),
                  maxLines: 1,
                  enabled: !controller.isBusy.value,
                  keyBoardType: TextInputType.number,
                  controller: controller.nationalIdController,
                  validator: QuickTextValidator(isNationalId: true),
                ),
              //name
              if (controller.isFirstTime.value == true)
                ThemedTextFormField.clean(
                  hintText: S.of(context).name,
                  borderRadius: 50.0,
                  suffixWidget: SvgPicture.asset(
                    PathUtil.userPathSVG,
                    color: ColorUtil.primaryColor,
                    height: 50.h,
                  ),
                  maxLines: 1,
                  enabled: !controller.isBusy.value,
                  controller: controller.nameController,
                  validator: QuickTextValidator(),
                ),
              //email
              if (controller.isFirstTime.value == true)
                ThemedTextFormField.clean(
                  hintText: S.of(context).email,
                  englishText: true,
                  borderRadius: 50.0,
                  suffixWidget: SvgPicture.asset(
                    PathUtil.mailPathSVG,
                    color: ColorUtil.primaryColor,
                    height: 50.h,
                  ),
                  maxLines: 1,
                  keyBoardType: TextInputType.emailAddress,
                  enabled: !controller.isBusy.value,
                  controller: controller.emailController,
                  validator: QuickTextValidator(isEmail: true),
                ),
              //phone
              if (controller.isFirstTime.value == true)
                ThemedTextFormField.clean(
                  hintText: S.of(context).phoneNumber,
                  englishText: true,
                  borderRadius: 50.0,
                  suffixWidget: Icon(
                    Icons.phone,
                    color: ColorUtil.primaryColor,
                  ),
                  maxLines: 1,
                  keyBoardType: TextInputType.number,
                  enabled: !controller.isBusy.value,
                  controller: controller.phoneController,
                  validator: QuickTextValidator(isPhone: true),
                ),
              //job desc
              if (controller.isFirstTime.value == true)
                ThemedTextFormField.clean(
                  hintText: S.of(context).jobDesc,
                  borderRadius: 50.0,
                  suffixWidget: Icon(
                    Icons.badge,
                    color: ColorUtil.primaryColor,
                  ),
                  maxLines: 1,
                  keyBoardType: TextInputType.text,
                  enabled: !controller.isBusy.value,
                  controller: controller.jobController,
                ),
              //password
              if (controller.isFirstTime.value != null)
                ThemedTextFormField.clean(
                  englishText: true,
                  hintText: S.of(context).password,
                  borderRadius: 50.0,
                  suffixWidget: SvgPicture.asset(
                    PathUtil.lockPathSVG,
                    height: 50.h,
                  ),
                  isPassword: true,
                  hidePassword: controller.hidePassword.value,
                  changeObscuring: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  maxLines: 1,
                  enabled: !controller.isBusy.value,
                  controller: controller.passwordController,
                  validator: QuickTextValidator(
                    hasMinLength: 8,
                    isRequired: true,
                  ),
                ),
              //confirm password
              if (controller.isFirstTime.value == true)
                ThemedTextFormField.clean(
                  hintText: S.of(context).confirmPassword,
                  englishText: true,
                  borderRadius: 50.0,
                  suffixWidget: SvgPicture.asset(
                    PathUtil.lockPathSVG,
                    height: 50.h,
                  ),
                  maxLines: 1,
                  isPassword: true,
                  hidePassword: controller.hidePassword.value,
                  changeObscuring: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  enabled: !controller.isBusy.value,
                  controller: controller.confirmPasswordController,
                  validator: QuickTextValidator(
                    extraValidation: (value) {
                      if (value != controller.passwordController.text) {
                        return S.current.invalidConfirmPassword;
                      }
                      return null;
                    },
                  ),
                ),
              //error viewer
              if (controller.hasError)
                Text(
                  controller.errorMessage.value,
                  style: TextStyle(
                    color: ColorUtil.errorColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 40.sp,
                  ),
                  textAlign: TextAlign.start,
                ),
              //login button
              controller.isBusy.value
                  ? Loading()
                  : AppButton(
                      color: ColorUtil.primaryColor,
                      title: S.of(context).signIn,
                      borderRadius: 50.0,
                      onPressed: controller.auth,
                    )
            ],
          ),
        ),
      ),
    );
  }
}
