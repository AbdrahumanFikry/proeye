import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/proccessColors.dart';
import 'package:pro_eye/app/modules/create_or_update_task/controllers/create_or_update_task_route_parameters.dart';
import 'package:pro_eye/app/modules/single_team/controllers/single_team_controller.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/colored_danger_zone_vm.dart';
import 'package:proeye_api/model/project_abstract_task_vm.dart';

import 'missionCard.dart';

class MissionsBlock extends GetView<SingleTeamController> {
  final List<ProjectAbstractTaskVM> tasks;

  MissionsBlock(
    this.tasks,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  S.of(context).teamMissions,
                  style: TextStyle(
                    color: ColorUtil.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 60.sp,
                  ),
                ),
              ),
              if (controller.params.isCommitteeLeader)
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color: ColorUtil.primaryColor,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    final res = await Get.toNamed(
                      Routes.CREATE_OR_UPDATE_TASK,
                      arguments: CreateOrUpdateTaskRouteParameters(
                        committeeId: controller.committeeId,
                        committeeStartDate:
                            controller.params.committee.value.plannedStart,
                        projectId: controller.params.projectId,
                        teamId: controller.params.teamId,
                        taskDetails: null,
                        taskId: null,
                      ),
                    );
                    if (res == true) {
                      await controller.params.refreshCommittee();
                    }
                  },
                )
            ],
          ),
        ),
        AnimatedListHandler(
          shrinkWrap: true,
          noScroll: true,
          children: [
            Obx(
              () {
                final colorsMap = controller.singleTeam.tasks
                    .map((x) => x.colorInfo)
                    .toList();
                return ProcessColors(
                  colorsMap,
                  padding: EdgeInsets.all(8),
                );
              },
            ),
            ...tasks.map(
              (mission) {
                return MissionCard(
                  isReceiveTask: mission.isReceiveTask,
                  missionTitle: mission.title,
                  startDate: mission.plannedStart,
                  endDate: mission.plannedEnd,
                  notes: mission.notes,
                  taskId: mission.taskId,
                  actualEnd: mission.actualEnd,
                  status: mission.colorInfo,
                );
              },
            ).toList()
          ],
        ),
      ],
    );
  }
}
