import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/project_team_vm.dart';
import 'package:proeye_api/model/req_change_committee_team.dart';
import 'package:proeye_api/model/req_team_vm.dart';

class AddTeamDialog extends ThemedDialogFormControllerBase {
  final teamName = TextEditingController();
  final List<ProjectTeamVM> teams;
  final String projectId;
  final String committeeId;

  AddTeamDialog(
    this.projectId,
    this.committeeId,
    this.teams,
  );

  @override
  void onConfirm() async {
    try {
      startBusy();
      await request(
        api
            .getCommitteeLeaderApi()
            .v10ApiCommitteeLeaderProjectIdCommitteeIdUpdateTeamsPost(
              projectId,
              committeeId,
              reqChangeCommitteeTeam: (ReqChangeCommitteeTeamBuilder()
                    ..teams = ListBuilder<ReqTeamVM>(
                      [
                        ...teams
                            .map(
                              (oldTeam) => (ReqTeamVMBuilder()
                                    ..teamId = oldTeam.teamId
                                    ..teamName = oldTeam.teamName)
                                  .build(),
                            )
                            .toList(),
                        (ReqTeamVMBuilder()
                              ..teamId = null
                              ..teamName = teamName.text)
                            .build(),
                      ],
                    ))
                  .build(),
            ),
      );
      Get.back(result: true);
      endBusySuccess();
    } catch (e) {
      endBusyError(e, showDialog: true);
    }
  }

  Future<bool> show() {
    return ThemedDialogForm<AddTeamDialog>(
      childBuilder: (controller) {
        return Column(
          children: [
            ThemedTextFormField(
              title: S.current.teamName,
              controller: controller.teamName,
            ),
          ],
        );
      },
      controller: this,
      title: S.current.addNewTeam,
    ).showDialog();
  }
}
