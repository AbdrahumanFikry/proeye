import 'package:flutter/material.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/multi_data_components_view.dart';
import 'package:pro_eye/app/modules/project_details/controllers/project_details_controller.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/company_user_relation_types_enum.dart';

class RepresentativeBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final projectDetails = ProjectDetailsController.to?.projectDetails?.value;
    final reqInfo = projectDetails?.requesterInfo;
    String relation;
    switch (reqInfo?.requesterRelationToOwnerCompany) {
      case CompanyUserRelationTypesEnum.manager:
        relation = S.of(context).sideOwner;
        break;

      case CompanyUserRelationTypesEnum.representative:
        relation = S.of(context).sideRepresentative;
        break;

      case CompanyUserRelationTypesEnum.other:
        relation = reqInfo.requesterRelationToOwnerCompanyDesc;
        break;
    }
    return MultiDataComponentsView(
      S.of(context).sidePresenter,
      reqInfo?.requesterName,
      [
        ThemedDataViewer(
          title: S.of(context).email,
          content: reqInfo.requesterEmail,
        ),
        ThemedDataViewer(
          title: S.of(context).mobile,
          content: reqInfo.requesterPhone,
        ),
        ThemedDataViewer(
          title: S.of(context).phone,
          content: reqInfo.requesterLandline,
        ),
        if (relation != null)
          ThemedDataViewer(
            title: S.of(context).presenterRelation,
            content: relation,
          ),
      ],
    );
  }
}
