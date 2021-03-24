import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:proeye_api/model/execution_company_view_model_data_wrapper_vm.dart';

class AddNewExecutionAgencyController extends GetxController
    with BusyMixin, ApiMixin {
  final formKey = GlobalKey<FormState>();

  final phone1Controller = TextEditingController();
  final phone2Controller = TextEditingController();
  final emailController = TextEditingController();
  final agencyName = TextEditingController();
  final commercialRecord = TextEditingController();
  final engineeringSlot = TextEditingController();
  final notes = TextEditingController();
  final fax = TextEditingController();
  final addressController = TextEditingController();

  Future<void> addNewExecutionCompany() async {
    final formData = formKey.currentState;
    if (formData.validate()) {
      try {
        startBusy();
        final resp = await request<ExecutionCompanyViewModelDataWrapperVM>(
          api.getCompaniesApi().v10ApiCompaniesExecutionPost(
                agencyName.text,
                companyRegister: commercialRecord.text,
                phone1: phone1Controller.text,
                address: addressController.text,
                engLayer: engineeringSlot.text,
                email: emailController.text,
                phone2: phone2Controller.text,
                notes: notes.text,
                fax: fax.text,
              ),
        );
        //
        Get.back(result: resp.data);
      } catch (error) {
        endBusyError(error.toString(), showDialog: true);
      }
    }
  }
}
