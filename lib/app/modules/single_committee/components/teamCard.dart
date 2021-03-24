import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/proccessColors.dart';
import 'package:pro_eye/app/modules/single_team/bindings/single_team_binding.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/project_team_vm.dart';

import '../controllers/single_committee_controller.dart';

class TeamCard extends GetView<SingleCommitteeController> {
  final ProjectTeamVM currentTeam;

  TeamCard({
    this.currentTeam,
  });

  @override
  Widget build(BuildContext context) {
    return GlobalCard(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      onTap: () {
        Get.toNamed(
          Routes.SINGLE_TEAM,
          arguments: SingleTeamInputParams(
            committeeId: controller.committeeId,
            committee: controller.currentCommittee,
            projectId: controller.projectId,
            isCommitteeLeader: controller.committeeLeader,
            teamId: currentTeam.teamId,
            refreshCommittee: controller.fetchSingleCommittee,
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ThemedDataViewer(
            title: S.current.teamName,
            content: currentTeam?.teamName,
            selectable: false,
          ),
          ProcessColors(
            currentTeam.tasks.map((x) => x.colorInfo).toList(),
            margins: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            style: NeumorphicStyle(
              color: Colors.transparent,
              depth: 0,
            ),
          ),
        ],
      ),
    );
  }
}
