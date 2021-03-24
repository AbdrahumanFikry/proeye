import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/modules/single_team/bindings/single_team_binding.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:built_collection/built_collection.dart';

class AddTeamMemberDialog extends ThemedDialogFormControllerBase {
  final SingleTeamInputParams params;
  final Iterable<String> existingUsers;
  final userId = TextEditingController();
  AddTeamMemberDialog(this.params, this.existingUsers);

  @override
  void onConfirm() async {
    try {
      startBusy();
      await request<void>(
        api
            .getCommitteeLeaderApi()
            .v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdUpdateMembersPost(
              params.projectId,
              params.committeeId,
              params.teamId,
              requestBody: <String>[
                ...existingUsers,
                userId.text,
              ].toBuiltList(),
            ),
      );
      endBusySuccess();
      Get.back(result: true);
    } catch (e) {
      endBusyError(e.toString(), showDialog: true);
    }
  }

  static Future<bool> show(
    SingleTeamInputParams params,
    Iterable<String> existingUsers,
  ) {
    return ThemedDialogForm<AddTeamMemberDialog>(
      title: S.current.addNewMember,
      childBuilder: (controller) {
        return ThemedTextFormField(
          controller: controller.userId,
          title: S.current.nationalId,
          validator: QuickTextValidator(isNationalId: true),
        );
      },
      controller: AddTeamMemberDialog(params, existingUsers),
      hasCancel: true,
    ).showDialog();
  }
}
