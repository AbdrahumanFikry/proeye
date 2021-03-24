import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/components/filtered_paginated_list_int.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/execution_company_view_model.dart';

import '../controllers/single_project_request_details_select_exec_company_controller.dart';

class SingleProjectRequestDetailsSelectExecCompanyView
    extends GetView<SingleProjectRequestDetailsSelectExecCompanyController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await controller.addNewExecutionCompany();
        },
        label: Text('إضافة جهة جديدة'),
        backgroundColor: ColorUtil.primaryColor,
        icon: Icon(Icons.add),
      ),
      appBar: GlobalAppBar(
        title: S.current.selectExecCompany,
        enableBack: true,
      ),
      body: IntFilteredPaginatedList<ExecutionCompanyViewModel>(
        pageRequestListener: controller.fetchCompanies,
        textFilterController: controller.textFilter,
        //extraFilterStream: controller.isInMansUni.stream,
        itemBuilder: (context, item, index) {
          var phone = [item.phone1, item.phone2]
              .where((element) => element != null && element.isNotEmpty)
              .join(' - ');

          var extraInfo = [
            if (item.companyRegister != null)
              'السجل التجاري: ${item.companyRegister} ',
            if (item.engLayer != null) 'الشريحة الهندسية: ${item.engLayer}',
          ]
              .where((element) => element != null && element.isNotEmpty)
              .join(' - ');

          var subTitle = [phone, extraInfo]
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
        // filterDialogBuilder: () {
        //   return ThemedFilterDialog(
        //     child: Column(
        //       mainAxisSize: MainAxisSize.min,
        //       children: [
        //         CheckboxListTile(
        //           tristate: true,
        //           title: Text('مكان الجهة المالكة'),
        //           value: controller.isInMansUni.value,
        //           subtitle: Text(
        //             controller.isInMansUni.value == null
        //                 ? 'الكل'
        //                 : controller.isInMansUni.value
        //                     ? 'داخل جامعة المنصورة فقط'
        //                     : 'خارج جامعة المنصورة فقط',
        //           ),
        //           onChanged: (val) {
        //             printInfo(info: 'isInMansUni: $val  ');
        //             controller.isInMansUni.value = val;
        //           },
        //         ),
        //       ],
        //     ),
        //   );
        // },
      ),
    );
  }
}
