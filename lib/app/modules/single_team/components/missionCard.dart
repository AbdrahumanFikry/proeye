import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/components/proccessColors.dart';
import 'package:pro_eye/app/modules/single_task/bindings/single_task_binding.dart';
import 'package:pro_eye/app/modules/single_team/controllers/single_team_controller.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/colored_danger_zone_vm.dart';

class MissionCard extends GetView<SingleTeamController> {
  final String taskId;
  final String missionTitle;
  final DateTime startDate;
  final DateTime endDate;
  final DateTime actualEnd;
  final bool isReceiveTask;
  final ColoredDangerZoneVM status;
  final String notes;

  MissionCard({
    @required this.isReceiveTask,
    @required this.taskId,
    this.missionTitle = 'Mission',
    @required this.startDate,
    @required this.endDate,
    @required this.actualEnd,
    @required this.status,
    @required this.notes,
  });

  @override
  Widget build(BuildContext context) {
    final color = HexColor.fromRGB(status.colorValue) ?? Colors.transparent;
    return GlobalCard(
      onTap: () {
        Get.toNamed(
          Routes.SINGLE_TASK,
          arguments: SingleTaskInputParams(
            taskId: taskId,
            isReceiveTask: isReceiveTask,
            committeeId: controller.committeeId,
            teamId: controller.teamId,
            projectId: controller.projectId,
            committee: controller.params.committee,
            refreshCommittee: controller.params.refreshCommittee,
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  missionTitle ?? S.of(context).mission,
                  style: TextStyle(
                    color: ColorUtil.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 60.sp,
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: color,
                radius: 10.0,
              ),
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          if (actualEnd != null)
            Row(
              children: [
                Text('تم الانتهاء من المهمة في: '),
                Expanded(
                  child: Text(
                    actualEnd.toShortUserString(),
                    style: TextStyle(
                      color: ColorUtil.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 40.sp,
                    ),
                  ),
                ),
              ],
            ),
          if (notes != null)
            Row(
              children: [
                Text(S.of(context).notes + ' : '),
                Expanded(
                  child: Text(
                    notes,
                    style: TextStyle(
                      color: ColorUtil.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 40.sp,
                    ),
                  ),
                ),
              ],
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (startDate != null)
                Text(
                  DateFormat.yMMMd().format(startDate),
                  style: TextStyle(
                    color: ColorUtil.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 34.sp,
                  ),
                ),
              const SizedBox(
                width: 5.0,
              ),
              if (endDate != null)
                Text(
                  '- ${endDate.toShortUserString()}',
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
