import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:proeye_api/model/project_name_id.dart';

class RequestCard extends StatelessWidget {
  final ProjectNameId projectNameId;
  final void Function() refreshList;

  RequestCard(this.projectNameId, this.refreshList);

  @override
  Widget build(BuildContext context) {
    return GlobalCard(
      onTap: () async {
        final res = await Get.toNamed(
          Routes.SINGLE_PROJECTS_REQUEST_DETAILS,
          arguments: projectNameId,
        ) as bool;
        if (res == true) {
          refreshList?.call();
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            projectNameId.projectName ?? '',
            style: TextStyle(
              color: ColorUtil.primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 60.sp,
            ),
          ),
          // if (date != null)
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       Expanded(
          //         child: Text(
          //           DateFormat.yMMMMd().format(date),
          //           style: TextStyle(
          //             color: ColorUtil.greyColor,
          //             fontWeight: FontWeight.w600,
          //             fontSize: 36.sp,
          //           ),
          //           textAlign: TextAlign.end,
          //         ),
          //       ),
          //     ],
          //   ),
        ],
      ),
    );
  }
}
