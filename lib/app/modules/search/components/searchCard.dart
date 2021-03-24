import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';

class SearchCard extends StatelessWidget {
  final String id;
  final String title;
  final String description;
  final Color trailingColor;

  SearchCard({
    @required this.id,
    this.title,
    this.description,
    this.trailingColor,
  });

  @override
  Widget build(BuildContext context) {
    return GlobalCard(
      onTap: () {
        // if (searchType == SearchType.Projects) {
        //   Get.toNamed(
        //     Routes.PROJECTS_DETAILS,
        //     arguments: {
        //       'id': id,
        //       'name': title,
        //     },
        //   );
        // } else if (searchType == SearchType.Financial) {
        //   FinancialController.to.fetchProjectExtracts(id);
        //   Get.to(
        //     ExtractsListView(projectName: title),
        //   );
        // } else if (searchType == SearchType.TechnicalReports) {
        //   //TODO ----------------------------------------------------
        //   Get.to(ReportDetailView(), binding: TechnicalReportsBinding());
        // } else if (searchType == SearchType.ProjectsRequests) {
        //   Get.toNamed(
        //     Routes.SINGLE_PROJECTS_REQUEST_DETAILS,
        //     arguments: id,
        //   );
        // } else if (searchType == SearchType.Extracts) {
        //   Get.toNamed(
        //     Routes.EXTRACTS_DETAILS,
        //     arguments: id,
        //   );
        // }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title ?? '',
                  style: TextStyle(
                    color: ColorUtil.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 60.sp,
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: trailingColor ?? Colors.transparent,
                radius: 10.0,
              ),
            ],
          ),
          Text(
            description ?? '',
            style: TextStyle(
              color: ColorUtil.greyColor,
              fontWeight: FontWeight.w600,
              fontSize: 40.sp,
            ),
          ),
        ],
      ),
    );
  }
}
