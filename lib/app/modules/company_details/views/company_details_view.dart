import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/generated/l10n.dart';

import '../controllers/company_details_controller.dart';

class CompanyDetailsView extends GetView<CompanyDetailsController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: ThemedGlobalAppBar(
        title: controller.asExec != null
            ? S.current.executingAgency
            : S.current.ownerSide,
        enableBack: true,
      ),
      body: ListView(
        children: [
          if (controller.title != null)
            ThemedDataViewer(
              title: S.current.name,
              content: controller.title,
            ),
          if (controller.phone1 != null)
            ThemedDataViewer(
              title: S.current.phone1,
              content: controller.phone1,
            ),
          if (controller.phone2 != null)
            ThemedDataViewer(
              title: S.current.phone2,
              content: controller.phone2,
            ),
          if (controller.engLayer != null)
            ThemedDataViewer(
              title: S.current.engineeringSlot,
              content: controller.engLayer,
            ),
          if (controller.companyRegister != null)
            ThemedDataViewer(
              title: 'السجل التجاري',
              content: controller.companyRegister,
            ),
          if (controller.isInMansouraUniversity != null)
            ThemedDataViewer(
              title: S.current.location,
              content: controller.isInMansouraUniversity
                  ? S.current.inMansoura
                  : S.current.outMansoura,
            ),
          if (controller.activity != null)
            ThemedDataViewer(
              title: S.current.activity,
              content: controller.activity,
            ),
          if (controller.section != null)
            ThemedDataViewer(
              title: S.current.sector,
              content: controller.section,
            ),
        ],
      ),
    );
  }
}
