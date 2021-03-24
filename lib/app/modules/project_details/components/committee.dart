import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/modules/project_details/controllers/project_details_controller.dart';
import 'package:pro_eye/app/modules/single_committee/bindings/single_committee_binding.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class CommitteesBlock extends GetView<ProjectDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            S.of(context).committeesData,
            style: TextStyle(
              color: ColorUtil.primaryColor,
              fontWeight: FontWeight.w800,
              fontSize: 60.sp,
            ),
          ),
        ),
        Obx(
          () {
            final allCommittees =
                controller.projectDetails.value.committees.toList();
            return Neumorphic(
              style: NeumorphicStyle(
                depth: -3.0,
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(
                    25.0,
                  ),
                ),
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: AnimatedListHandler(
                noScroll: true,
                shrinkWrap: true,
                children: allCommittees
                    .map(
                      (committee) => GlobalCard(
                        onTap: () async {
                          if (committee?.committeeId != null) {
                            Get.toNamed(
                              Routes.SINGLE_COMMITTEE,
                              arguments: SingleCommitteeRouteParameters(
                                  committeeId: committee.committeeId,
                                  projectDetails: controller.projectDetails,
                                  projectId: controller.projectId,
                                  refreshProjectDetails:
                                      controller.fetchSingleProject),
                            );
                          }
                        },
                        borderRadius: AppUtil.borderRadius,
                        margin: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 5.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              committee?.committeeName ?? '',
                              style: TextStyle(
                                color: ColorUtil.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 48.sp,
                              ),
                            ),
                            Text(
                              S.of(context).chairman +
                                  ' : ' +
                                  (committee?.committeeDirector?.nameAr ?? '-'),
                              style: TextStyle(
                                color: ColorUtil.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 38.sp,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                if (committee?.plannedStart != null)
                                  Text(
                                    DateFormat.yMMMd()
                                        .format(committee.plannedStart),
                                    style: TextStyle(
                                      color: ColorUtil.primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 34.sp,
                                    ),
                                  ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                if (committee?.plannedEnd != null)
                                  Text(
                                    '- ${DateFormat.yMMMd().format(committee.plannedEnd)}',
                                    style: TextStyle(
                                      color: ColorUtil.primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 34.sp,
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
                      ),
                    )
                    .toList(),
              ),
            );
          },
        ),
      ],
    );
  }
}
