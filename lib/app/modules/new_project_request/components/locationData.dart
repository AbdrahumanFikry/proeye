import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/themed_drop_down_form_field.dart';
import 'package:pro_eye/app/modules/new_project_request/controllers/new_project_request_controller.dart';
import 'package:pro_eye/app/services/appService.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proeye_api/model/govs_cities_view_model_city.dart';
import 'package:proeye_api/model/govs_cities_view_model_gov.dart';

class LocationDataBlock extends GetView<NewProjectRequestController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              S.of(context).location,
              style: TextStyle(
                color: ColorUtil.primaryColor,
                fontWeight: FontWeight.w800,
                fontSize: 60.sp,
              ),
            ),
          ),
          ThemedDropDownFormField<GovsCitiesViewModelGov>(
            title: S.of(context).governorate,
            bigHeader: true,
            controller: controller.governorate,
            isRequired: true,
            isBusy: AppService.to.govsLoading.value,
            items: AppService.to.govs.toList(),
            listDisplayFunc: (g) {
              var res = AppUtil.isLtr ? g.govNameEn : g.govNameAr;
              return res;
            },
            onChanged: (GovsCitiesViewModelGov value) {
              print('Gov selected : ' + value.govNameAr);
            },
          ),
          ThemedDropDownFormField<GovsCitiesViewModelCity>(
            title: S.of(context).city,
            bigHeader: true,
            isRequired: true,
            controller: controller.city,
            isBusy: AppService.to.citiesLoading.value,
            items: AppService.to.cities.toList(),
            listDisplayFunc: (c) => AppUtil.isLtr ? c.cityNameEn : c.cityNameAr,
            onChanged: (GovsCitiesViewModelCity value) {
              print('City selected : ' + value.cityNameAr);
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
