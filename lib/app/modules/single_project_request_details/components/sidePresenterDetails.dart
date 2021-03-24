import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/themed_header_children.dart';
import 'package:pro_eye/app/modules/single_project_request_details/controllers/single_project_request_details_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/company_user_relation_types_enum.dart';

class SidePresenterData extends GetView<SingleProjectRequestDetailsController> {
  @override
  Widget build(BuildContext context) {
    return ThemedHeaderChildren(
      title: S.of(context).sidePresenter,
      child: Obx(
        () {
          final empProjectDetails =
              controller.executiveManagerProjectDetails.value;
          final eMDProjectDetails =
              controller.engManagementDirectorProjectDetails.value;
          final reqDetails = empProjectDetails?.requesterInfo ??
              eMDProjectDetails?.requesterInfo;
          if (reqDetails == null) {
            return SizedBox.shrink();
          }
          String reqRelation;
          if (reqDetails.requesterRelationToOwnerCompany ==
              CompanyUserRelationTypesEnum.other) {
            reqRelation = reqDetails.requesterRelationToOwnerCompanyDesc;
          } else {
            switch (reqDetails.requesterRelationToOwnerCompany) {
              case CompanyUserRelationTypesEnum.manager:
                reqRelation = 'مدير';
                break;
              case CompanyUserRelationTypesEnum.representative:
                reqRelation = 'ممثل الجهة';
                break;
              default:
            }
          }

          return Column(
            children: [
              ThemedDataViewer(
                title: S.of(context).name,
                content: reqDetails?.requesterName,
              ),
              ThemedDataViewer(
                title: S.of(context).email,
                content: reqDetails?.requesterEmail,
              ),
              ThemedDataViewer(
                title: S.of(context).mobile,
                content: reqDetails?.requesterPhone,
              ),
              ThemedDataViewer(
                title: S.of(context).phone,
                content: reqDetails?.requesterLandline,
              ),
              ThemedDataViewer(
                title: S.of(context).sidePresenterRelation,
                content: reqRelation,
              ),
            ],
          );
        },
      ),
    );
  }
}
