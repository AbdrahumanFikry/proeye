import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/circleButton.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/models/centerRole.dart';
import 'package:pro_eye/app/modules/single_project_request_details/components/commiteeCard.dart';
import 'package:pro_eye/app/modules/single_project_request_details/controllers/single_project_request_details_controller.dart';
import 'package:pro_eye/app/modules/single_project_request_details/dialogs/create_new_committee_dialog.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';

class ProjectDetails extends GetView<SingleProjectRequestDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            children: [
              Text(
                S.of(context).completeProjectRequest,
                style: TextStyle(
                  color: ColorUtil.primaryColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 60.sp,
                ),
              ),
              Icon(
                Icons.edit,
                color: ColorUtil.primaryColor,
              ),
            ],
          ),
        ),
        Neumorphic(
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
            children: [
              ThemedTextFormField(
                title: S.of(context).projectManager,
                controller: controller.projectManager,
                validator: QuickTextValidator(isNationalId: true),
                keyBoardType: TextInputType.number,
              ),
              ThemedTextFormField(
                title: S.of(context).estimatedValue,
                controller: controller.estimatedValue,
                validator: QuickTextValidator(),
                keyBoardType: TextInputType.number,
                englishText: true,
              ),
              ThemedDateSelectorFormField(
                title: S.current.projectStartDate,
                controller: controller.projectStartDate,
                isRequired: true,
              ),
              ThemedDurationSelectorFormField(
                title: S.current.executiveDuration,
                controller: controller.projectDuration,
                isRequired: true,
                extraValidator: (val) {
                  if (val.inDays == 0) {
                    return S.current.inputNull;
                  }
                  return null;
                },
              ),
              ThemedDropDownFormField<CenterRole>(
                title: S.of(context).centerRole,
                bigHeader: true,
                isRequired: true,
                controller: controller.centerRole,
                items: controller.rolesList.toList(),
                listDisplayFunc: (CenterRole c) => c.title,
                onChanged: (CenterRole value) {
                  print('Center role selected : ' + value.title);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        S.of(context).committeesData,
                        style: TextStyle(
                          color: ColorUtil.primaryColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 60.sp,
                        ),
                      ),
                    ),
                    CircleButton(
                      child: Icon(
                        Icons.add,
                        color: ColorUtil.primaryColor,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        final res =
                            await CreateNewCommitteeDialogController.show();
                        if (res != null) {
                          controller.allAddedCommittee.add(res.build());
                        }
                      },
                    ),
                  ],
                ),
              ),
              Obx(
                () => AnimatedListHandler(
                  shrinkWrap: true,
                  noScroll: true,
                  children: controller.allAddedCommittee
                      .map(
                        (committee) => SingleCommitteeCard(
                          committeeViewModel: committee,
                          onRemove: () =>
                              controller.allAddedCommittee.remove(committee),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
