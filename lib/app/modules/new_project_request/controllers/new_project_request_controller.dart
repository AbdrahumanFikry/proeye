import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/components/mixins/upload_files_controller_mixin.dart';
import 'package:pro_eye/app/models/presenterRelation.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/services/appService.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/company_user_relation_types_enum.dart';
import 'package:proeye_api/model/gov_company_view_model.dart';
import 'package:proeye_api/model/govs_cities_view_model_city.dart';
import 'package:proeye_api/model/govs_cities_view_model_gov.dart';
import 'package:proeye_api/model/string_data_wrapper_vm.dart';

class NewProjectRequestController extends GetxController
    with BusyMixin, ApiMixin, UploadFilesMixin {
  final pickedStartDate = Rx<DateTime>();
  final pickedEndDate = Rx<DateTime>();
  final newRequestFormKey = GlobalKey<FormState>();

  final otherDesc = TextEditingController();
  final officialEmail = TextEditingController();
  final mangerName = TextEditingController();
  final mangerMobile = TextEditingController();
  final mangerPhone = TextEditingController();
  final projectName = TextEditingController();
  final projectDescription = TextEditingController();
  final notes = TextEditingController();

  final destinationAgency = Rx<GovCompanyViewModel>();
  final city = Rx<GovsCitiesViewModelCity>();
  final governorate = Rx<GovsCitiesViewModelGov>();

  final relation = Rx<PresenterRelation>();
  final allRelations = <PresenterRelation>[
    PresenterRelation(
      title: S.current.sideOwner,
      relationTypesEnum: CompanyUserRelationTypesEnum.manager,
    ),
    PresenterRelation(
      title: S.current.sideRepresentative,
      relationTypesEnum: CompanyUserRelationTypesEnum.representative,
    ),
    PresenterRelation(
      title: S.current.other,
      relationTypesEnum: CompanyUserRelationTypesEnum.other,
    ),
  ].obs;

  Future<void> newProjectRequest() async {
    final formDate = newRequestFormKey.currentState;
    try {
      if (formDate.validate()) {
        formDate.save();
        startBusy();
        final resp = await request<StringDataWrapperVM>(
          api.getProjectApi().v10ApiProjectsV1Post(
                projectName.text,
                destinationAgency.value.companyId,
                city.value.cityId,
                governorate.value.govId,
                projectDesc: projectDescription.text,
                notes: notes.text,
                requesterEmail: officialEmail.text,
                requesterLandline: mangerPhone.text,
                requesterName: mangerName.text,
                requesterRelationToOwnerCompany:
                    relation.value?.relationTypesEnum ??
                        CompanyUserRelationTypesEnum.other,
                requesterPhone: mangerPhone.text,
                officialRequestFiles:
                    (await prepareFilesToUpload()).toBuiltList(),
                requesterRelationToOwnerCompanyDesc: otherDesc.text,
              ),
        );
        endBusySuccess();
        Get.back(result: resp);
        AppUtil.showAlertDialog(
          body: 'تم تقديم الطلب بنجاح',
          enableCancel: false,
        );
      }
    } catch (error) {
      print('Error : ' + error.toString());
      endBusyError(error.toString(), showDialog: true);
    }
  }

  final subs = <StreamSubscription>{};

  @override
  void onReady() {
    super.onReady();
    subs.add(AppService.to.cities.listen((val) {
      city.nil();
    }));

    subs.add(governorate.listen((value) {
      if (value != null) AppService.to.fetchCities(value);
    }));
    AppService.to.fetchGovs();
  }

  @override
  void onClose() async {
    for (var item in subs) {
      await item.cancel();
    }
    subs.clear();
    super.onClose();
  }
}
