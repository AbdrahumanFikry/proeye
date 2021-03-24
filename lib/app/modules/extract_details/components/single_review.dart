import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/appButton.dart';
import 'package:pro_eye/app/components/form_fields/themed_data_viewer.dart';
import 'package:pro_eye/app/models/user_roles.dart';
import 'package:pro_eye/app/modules/extract_details/controllers/extract_details_controller.dart';
import 'package:pro_eye/app/modules/user_profile_view.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/extract_target_vm.dart';

class SingleReview extends StatelessWidget {
  final ExtractTargetVM target;
  const SingleReview({
    Key key,
    @required this.target,
  }) : super(key: key);
  String readableRole(String role) {
    switch (role) {
      case 'EngManagementDirector':
        return 'مدير الهيئة الهندسية';
      case 'ExecutiveManager':
        return 'مدير المركز التنفيذي';
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    var descLines = target.reviewDesc == null
        ? 1
        : '\n'.allMatches(target.reviewDesc).length;
    if (descLines == 0) descLines = 1;
    return GlobalCard(
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      padding: EdgeInsetsDirectional.only(top: 7.5, bottom: 7.5, end: 0),
      borderRadius: AppUtil.borderRadius,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ThemedDataViewer(
            title: S.of(context).reviewer,
            content: target.reviewedBy == null
                ? readableRole(target.targetGlobalRoleOrProjectRole)
                : target.reviewedBy.nameAr,
            selectable: false,
            onTap: target.reviewedBy == null
                ? null
                : () {
                    Get.to(() => UserProfileView(target.reviewedBy));
                  },
          ),
          Row(
            children: [
              Expanded(
                child: ThemedDataViewer(
                  title: S.of(context).reviewStatus,
                  content: target.reviewDesc ?? ' -- ',
                  maxLines: descLines,
                  margin: EdgeInsetsDirectional.only(
                    start: 20,
                    bottom: 8,
                    top: 8,
                    end: target.reviewResult != null ? 0 : 20,
                  ),
                ),
              ),
              //color here
              if (target.reviewResult != null)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: Material(
                      color: target.reviewResult ? Colors.green : Colors.red,
                      shape: CircleBorder(),
                    ),
                  ),
                )
            ],
          ),
          if (target.reviewFiles != null && target.reviewFiles.length > 0)
            AppButton(
              title: 'مرفقات المراجعة (${target.reviewFiles.length})',
              color: ColorUtil.primaryColor,
              onPressed: () {
                Get.toNamed(Routes.ATTACHMENTS, arguments: target.reviewFiles);
              },
            ),
        ],
      ),
      onTap: null,
    );
  }
}
