import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/appDirectionality.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/project_abstract_task_vm.dart';
import 'package:proeye_api/model/user_view_model.dart';

import '../components/membersBlock.dart';
import '../components/missionsBlock.dart';
import '../controllers/single_team_controller.dart';

class SingleTeamView extends GetView<SingleTeamController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: GlobalAppBar(
        title: S.current.teamDetails,
        enableBack: true,
      ),
      body: Obx(
        () {
          var team = controller.singleTeam;
          if (team == null) return SizedBox.shrink();
          return AnimatedListHandler(
            onRefresh: controller.params.refreshCommittee,
            children: [
              ThemedDataViewer(
                title: S.current.teamName,
                content: team.teamName,
              ),
              if (controller.isBusy.value) Loading(),
              if (!controller.isBusy.value)
                MembersBlock(
                  team.members?.toList() ?? <UserViewModel>[],
                ),
              if (!controller.isBusy.value)
                MissionsBlock(
                  team.tasks?.toList() ?? <ProjectAbstractTaskVM>[],
                ),
            ],
          );
        },
      ),
    );
  }
}
