import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/modules/extract_details/controllers/extract_details_controller.dart';
import 'package:pro_eye/app/modules/project_details_extracts/controllers/project_details_extracts_controller.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:proeye_api/model/project_extract_abstract_vm.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExtractCard extends GetView<ProjectDetailsExtractsController> {
  final ProjectExtractAbstractVM extract;

  const ExtractCard({Key key, @required this.extract}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GlobalCard(
      onTap: () {
        Get.toNamed(
          Routes.EXTRACTS_DETAILS,
          arguments: ExtractDetailsRouteInputParams(
            extractId: extract.extractId,
            projectId: controller.projectId,
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            extract.title,
            style: TextStyle(
              color: ColorUtil.primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 60.sp,
            ),
          ),
          if (extract?.type != null)
            Text(
              extract.type,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 34.sp,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          if (extract?.issuedAt != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    extract.issuedAt.toShortUserString(),
                    style: TextStyle(
                      color: ColorUtil.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 34.sp,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Icon(
                  Icons.access_time_sharp,
                  color: ColorUtil.primaryColor,
                  size: 14.0,
                )
              ],
            ),
        ],
      ),
    );
  }
}
