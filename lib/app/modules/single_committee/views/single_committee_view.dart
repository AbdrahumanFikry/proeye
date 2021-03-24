import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/emptyWidget.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/components/proccessColors.dart';
import 'package:pro_eye/app/components/themed_header_children.dart';
import 'package:pro_eye/app/modules/single_committee/dialogs/add_team.dart';

import 'package:pro_eye/app/modules/user_profile_view.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/colored_danger_zone_vm.dart';
import '../components/teamCard.dart';
import '../controllers/single_committee_controller.dart';

class SingleCommitteeView extends GetView<SingleCommitteeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GlobalScaffold(
        appBar: GlobalAppBar(
          title: S.current.committeeData,
          enableBack: true,
        ),
        body: controller.singleCommitteeLoading.value
            ? Loading()
            : AnimatedListHandler(
                onRefresh: controller.fetchSingleCommittee,
                children: [
                  ProcessColors(
                    controller?.currentCommittee?.value?.taskDangerZones
                            ?.toList() ??
                        <ColoredDangerZoneVM>[],
                    padding: EdgeInsets.all(8),
                  ),
                  ThemedDataViewer(
                    selectable: true,
                    title: S.of(context).committeeName,
                    content: controller.currentCommittee?.value?.committeeName,
                  ),
                  ThemedDataViewer(
                    selectable: false,
                    onTap: () => Get.to(
                      () => UserProfileView(
                        controller.currentCommittee.value.committeeDirector,
                      ),
                    ),
                    title: S.of(context).chairman,
                    content: controller
                        .currentCommittee?.value?.committeeDirector?.nameAr,
                  ),
                  if (controller.currentCommittee?.value?.plannedStart != null)
                    ThemedDataViewer(
                      title: S.of(context).plannedStartDate,
                      content: DateFormat.yMMMMd().format(
                          controller.currentCommittee?.value?.plannedStart),
                    ),
                  if (controller.currentCommittee?.value?.plannedEnd != null)
                    ThemedDataViewer(
                      title: S.of(context).plannedEndDate,
                      content: DateFormat.yMMMMd().format(
                          controller.currentCommittee?.value?.plannedEnd),
                    ),
                  if (controller.currentCommittee.value?.actualEnd != null)
                    ThemedDataViewer(
                      title: S.of(context).actualEndDate,
                      content: DateFormat.yMMMMd()
                          .format(controller.currentCommittee.value.actualEnd),
                    ),
                  ThemedHeaderChildren(
                    title: S.of(context).teams,
                    child: controller.teams.length == 0
                        ? EmptyWidget()
                        : Column(
                            children: controller.teams
                                .map<Widget>(
                                  (team) => TeamCard(
                                    currentTeam: team,
                                  ),
                                )
                                .toList(),
                          ),
                  ),
                  SizedBox(
                    height: Get.height / 10,
                  ),
                ],
              ),
        floatingActionButton: controller.committeeLeader
            ? FloatingActionButton.extended(
                onPressed: () async {
                  if (await AddTeamDialog(controller.projectId,
                          controller.committeeId, controller.teams)
                      .show()) {
                    controller.fetchSingleCommittee();
                  }
                },
                backgroundColor: ColorUtil.primaryColor,
                tooltip: S.of(context).addNewTeam,
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                label: Text(
                  S.of(context).addNewTeam,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
