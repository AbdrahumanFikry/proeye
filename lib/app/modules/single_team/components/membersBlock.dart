import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/modules/single_team/controllers/single_team_controller.dart';
import 'package:pro_eye/app/modules/single_team/dialogs/add_team_member_dialog.dart';
import 'package:pro_eye/app/modules/single_team/dialogs/delete_team_member_dialog.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/user_view_model.dart';

import 'memberCard.dart';

class MembersBlock extends GetView<SingleTeamController> {
  final List<UserViewModel> members;

  MembersBlock(
    this.members,
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
                  S.of(context).teamMembers,
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
                    if (await AddTeamMemberDialog.show(
                      controller.params,
                      controller.singleTeam.members.map((x) => x.id),
                    )) {
                      await controller.refreshMembers();
                    }
                  },
                )
            ],
          ),
        ),
        AnimatedListHandler(
          shrinkWrap: true,
          noScroll: true,
          children: members
              .map(
                (person) => MemberCard(
                  person,
                  controller.params.isCommitteeLeader
                      ? () async {
                          if (await DeleteTeamMemberDialog.show(
                                existingUsers: controller.singleTeam.members
                                    .map((x) => x.id),
                                params: controller.params,
                                user: person,
                              ) ==
                              true) {
                            await controller.refreshMembers();
                          }
                        }
                      : null,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
