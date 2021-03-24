import 'package:built_collection/built_collection.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/services/user_service.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/api.dart';
import 'package:proeye_api/model/govs_cities_view_model_city.dart';
import 'package:proeye_api/model/govs_cities_view_model_gov.dart';

class AppService extends GetxService with ApiMixin {
  static AppService get to => Get.find();
  final cities = RxList<GovsCitiesViewModelCity>([]);
  final govs = RxList<GovsCitiesViewModelGov>([]);
  final govsLoading = false.obs;
  final citiesLoading = false.obs;

  ProeyeApi get api => Get.find();

  String confirmPasswordValidator(String pw1, String pw2) {
    if (pw1 != pw2) {
      return S.current.invalidConfirmPassword;
    }
    return null;
  }

  Future<void> fetchGovs() async {
    try {
      if (govs.isEmpty || govs == null) {
        govsLoading.value = true;
        final resp = await request<BuiltList<GovsCitiesViewModelGov>>(
          api.getCitiesApi().v10ApiGovsGet(),
        );
        govs.assignAll(resp.toList());
      }
    } catch (error) {
      printError(info: 'Error fetching Govs : ' + error.toString());
    }
    govsLoading.value = false;
  }

  Future<void> fetchCities(GovsCitiesViewModelGov governorate) async {
    try {
      cities.clear();
      citiesLoading.value = true;
      final resp = await request<BuiltList<GovsCitiesViewModelCity>>(
        api.getCitiesApi().v10ApiGovsIdCitiesGet(governorate.govId),
      );
      cities.assignAll(resp.toList());
    } catch (error) {
      printError(info: 'Error fetching cites : ' + error.toString());
    }
    citiesLoading.value = false;
  }

  Future<void> removeToken() async {
    try {
      final token = UserService.to.currentUser.value.accessToken;
      await request<void>(
        api.getFcmApi().v10ApiFCMRemoveTokenDelete(
              token: token,
            ),
      );
    } catch (error) {
      printError(info: 'Error removing token : ' + error.toString());
    }
  }
}
