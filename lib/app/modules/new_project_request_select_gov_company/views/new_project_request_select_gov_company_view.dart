import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/components/filtered_paginated_list_int.dart';
import 'package:pro_eye/app/components/form_fields/themed_dialog_form.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/components/themed_filter_dialog.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/gov_company_view_model.dart';

import '../controllers/new_project_request_select_gov_company_controller.dart';

class NewProjectRequestSelectGovCompanyView
    extends GetView<NewProjectRequestSelectGovCompanyController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await controller.addNewGovCompany();
        },
        label: Text('إضافة جهة جديدة'),
        backgroundColor: ColorUtil.primaryColor,
        icon: Icon(Icons.add),
      ),
      appBar: GlobalAppBar(
        title: S.current.selectGovCompany,
        enableBack: true,
      ),
      body: IntFilteredPaginatedList<GovCompanyViewModel>(
        pageRequestListener: controller.fetchGovs,
        textFilterController: controller.textFilter,
        extraFilterStream: controller.isInMansUni.stream,
        itemBuilder: (context, item, index) {
          var phone = [item.phone1, item.phone2]
              .where((element) => element != null && element.isNotEmpty)
              .join(' - ');
          var activitySection =
              'القطاع: ${item.section.name} - النشاط: ${item.activity.name}';

          var subTitle = [phone, activitySection]
              .where((element) => element != null && element.isNotEmpty)
              .join('\n');
          return GlobalCard(
            onTap: null,
            child: ListTile(
              title: Text(
                item.name,
                style: TextStyle(
                  color: ColorUtil.primaryColor,
                ),
              ),
              subtitle: Text(subTitle),
              onTap: () {
                Get.back(result: item);
              },
            ),
          );
        },
        filterDialogBuilder: () {
          return ThemedFilterDialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CheckboxListTile(
                  tristate: true,
                  title: Text('مكان الجهة المالكة'),
                  value: controller.isInMansUni.value,
                  subtitle: Text(
                    controller.isInMansUni.value == null
                        ? 'الكل'
                        : controller.isInMansUni.value
                            ? 'داخل جامعة المنصورة فقط'
                            : 'خارج جامعة المنصورة فقط',
                  ),
                  onChanged: (val) {
                    printInfo(info: 'isInMansUni: $val  ');
                    controller.isInMansUni.value = val;
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
