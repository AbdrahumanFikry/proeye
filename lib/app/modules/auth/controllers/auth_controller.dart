import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/components/mixins/upload_files_controller_mixin.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/services/repos/_cache_service.dart';
import 'package:pro_eye/app/services/repos/user_repo.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:proeye_api/model/token_bag_view_model.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';

class AuthController extends GetxController
    with BusyMixin, ApiMixin, UploadFilesMixin {
  final nationalIdController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final jobController = TextEditingController();
  final hidePassword = true.obs;
  final isFirstTime = RxBool();
  final authFormKey = GlobalKey<FormState>();

  Future<void> auth() async {
    final formData = authFormKey.currentState;
    if (formData.validate()) {
      formData.save();

      try {
        startBusy();
        if (isFirstTime.value == null) {
          final resp = await request(
            api
                .getAccountsApi()
                .v10ApiAccountsIdCheckFirstLoginGet(nationalIdController.text),
          );
          isFirstTime.value = resp.data;
          endBusySuccess();
        } else {
          TokenBagViewModel resp;
          if (isFirstTime.value) {
            final profileUrl = await uploadFilesToServer(returnRelative: false);
            resp = await request(
              api.getAccountsApi().v10ApiAccountsLoginFirstTimePost(
                    nationalIdController.text,
                    passwordController.text,
                    confirmPasswordController.text,
                    phoneController.text,
                    nameController.text,
                    email: emailController.text,
                    photoUrl: profileUrl.firstOrDefault,
                    jobDesc: jobController.text,
                  ),
            );
          } else {
            resp = await request(
              api.getAccountsApi().v10ApiAccountsLoginPost(
                    nationalIdController.text,
                    passwordController.text,
                  ),
            );
          }
          endBusySuccess();
          if (resp.user.role.toUpperCase() == 'SystemAdmin'.toUpperCase()) {
            nationalIdController.text = '';
            isFirstTime.value = null;
            await AppUtil.showAlertDialog(
              title: 'غير مصرح لك',
              body: 'مدير النظام غير مصرح له باستعمال تطبيق الموبايل',
              confirmText: 'إعادة تسجيل الدخول',
            );
          } else {
            await CacheService.to.userRepo.registerTokenBag(
              resp.user.id,
              UserRepo.mapFromViewModel(resp),
            );

            Get.offAllNamed(Routes.PROJECTS);
          }
        }
      } catch (error) {
        endBusyError(error);
      }
    }
  }

  @override
  void onClose() {
    nationalIdController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    confirmPasswordController.dispose();
    emailController.dispose();
    nameController.dispose();
    super.onClose();
  }
}
