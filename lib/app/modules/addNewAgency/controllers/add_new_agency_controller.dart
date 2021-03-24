import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:proeye_api/api.dart';
import 'package:proeye_api/model/company_activity.dart';
import 'package:proeye_api/model/company_section.dart';
import 'package:proeye_api/model/gov_company_view_model_data_wrapper_vm.dart';

class AddNewAgencyController extends GetxController with ApiMixin, BusyMixin {
  ProeyeApi get api => Get.find();
  final formKey = GlobalKey<FormState>();
  final agencyName = TextEditingController();
  final isInMansouraUniversity = Rx<bool>();
  final phone1Controller = TextEditingController();
  final phone2Controller = TextEditingController();
  final emailController = TextEditingController();

  final allSections = <CompanySection>[].obs;
  final allActivities = <CompanyActivity>[].obs;
  final section = Rx<CompanySection>();
  final activity = Rx<CompanyActivity>();

  final notes = TextEditingController();
  final fax = TextEditingController();
  final addressController = TextEditingController();

  final sectionLoading = false.obs;
  final activitiesLoading = false.obs;
  Future<void> fetchSections() async {
    try {
      sectionLoading.value = true;
      BuiltList<CompanySection> resp = await request<BuiltList<CompanySection>>(
        api.getCompaniesApi().sectionsGet(
              isActive: true,
            ),
      );
      allSections.assignAll(resp);
    } catch (error) {
      printError(info: 'Error fetching Sections : ' + error.toString());
    }
    sectionLoading.value = false;
  }

  Future<void> fetchActivites() async {
    try {
      activitiesLoading.value = true;
      final resp = await request<BuiltList<CompanyActivity>>(
        api.getCompaniesApi().activitiesGet(
              isActive: true,
            ),
      );
      allActivities.assignAll(resp);
    } catch (error) {
      printError(info: 'Error fetching Sections : ' + error.toString());
    }
    activitiesLoading.value = false;
  }

  Future<void> addNewAgency() async {
    final formState = formKey.currentState;
    if (formState == null) return;
    if (formState.validate()) {
      try {
        startBusy();

        final company = await request<GovCompanyViewModelDataWrapperVM>(
          api.getCompaniesApi().v10ApiCompaniesGovPost(
                activity.value.id,
                section.value.id,
                agencyName.text,
                phone1: phone1Controller.text,
                address: addressController.text,
                fax: fax.text,
                notes: notes.text,
                phone2: phone2Controller.text,
                email: emailController.text,
                isInMansouraUniversity: isInMansouraUniversity.value,
              ),
        );
        Get.back(result: company.data);
      } catch (error) {
        endBusyError(error, showDialog: true);
      }
    }
  }

  @override
  void onReady() {
    super.onReady();
    fetchSections();
    fetchActivites();
  }
}
