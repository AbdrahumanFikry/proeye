import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/modules/single_team/bindings/single_team_binding.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/user_view_model.dart';

class DeleteTeamMemberDialog extends ThemedDialogFormControllerBase {
  final SingleTeamInputParams params;
  final String userId;
  final Iterable<String> existingUsers;
  DeleteTeamMemberDialog({
    @required this.params,
    @required this.existingUsers,
    @required this.userId,
  });

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
              requestBody:
                  existingUsers.where((x) => x != userId).toBuiltList(),
            ),
      );
      endBusySuccess();
      Get.back(result: true);
    } catch (e) {
      endBusyError(e.toString(), showDialog: true);
    }
  }

  static Future<bool> show({
    @required SingleTeamInputParams params,
    @required Iterable<String> existingUsers,
    @required UserViewModel user,
  }) {
    return ThemedDialogForm<DeleteTeamMemberDialog>(
      title: 'تنبيه',
      childBuilder: (controller) {
        return Column(
          children: [
            Text('هل انت متأكد من حذف العضو:'),
            Text(
              user.nameAr,
              style: TextStyle(
                color: ColorUtil.errorColor,
              ),
            ),
            Text('من الفريق ؟'),
          ],
        );
      },
      controller: DeleteTeamMemberDialog(
        existingUsers: existingUsers,
        params: params,
        userId: user.id,
      ),
      hasCancel: true,
    ).showDialog();
  }
}
