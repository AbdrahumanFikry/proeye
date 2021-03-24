import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/multi_data_components_view.dart';
import 'package:pro_eye/app/modules/project_details/controllers/project_details_controller.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/consulting_center_role_enum.dart';

import 'identificationCard.dart';

class IdentificationCodeBlock extends GetView<ProjectDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final projectDetails = controller.projectDetails.value;
        if (projectDetails == null) {
          return Container();
        }
        String centerRole;
        switch (projectDetails.consultingCenterRole) {
          case ConsultingCenterRoleEnum.SD:
            centerRole = S.of(context).supervisionDesignRole;
            break;
          case ConsultingCenterRoleEnum.S:
            centerRole = S.of(context).supervisionRole;
            break;
          case ConsultingCenterRoleEnum.C:
            centerRole = S.of(context).consultingRole;
            break;
          case ConsultingCenterRoleEnum.D:
            centerRole = S.of(context).designRole;
            break;
          default:
        }
        return MultiDataComponentsView(
          S.of(context).identificationCode,
          controller.projectDetails.value.projectCode,
          <Widget>[
            IdentificationCard(
              title: S.of(context).governorate,
              content: projectDetails.governorate.govNameAr,
              code:
                  projectDetails.governorate.govId?.toString()?.padLeft(2, '0'),
            ),
            IdentificationCard(
              title: S.of(context).city,
              content: projectDetails.city.cityNameAr,
              code: projectDetails.city.cityId.toString().padLeft(2, '0'),
            ),
            IdentificationCard(
              title: S.of(context).side,
              content: projectDetails.ownerCompany.isInMansouraUniversity
                  ? S.of(context).mansouraUniversity
                  : S.of(context).outMansoura,
              code: projectDetails.ownerCompany.isInMansouraUniversity
                  ? '0'
                  : '1',
            ),
            IdentificationCard(
              title: S.of(context).sideDescription,
              content: projectDetails.ownerCompany.activity.name,
              code: projectDetails.ownerCompany.activity.id
                  .toString()
                  .padLeft(3, '0'),
            ),
            IdentificationCard(
              title: S.of(context).sector,
              content: projectDetails.ownerCompany.section.name,
              code: projectDetails.ownerCompany.section.id
                  .toString()
                  .padLeft(3, '0'),
            ),
            IdentificationCard(
              title: S.of(context).operationNumber,
              content: projectDetails.operationNumber?.toString(),
              code: projectDetails.operationNumber?.toString()?.padLeft(4, '0'),
            ),
            IdentificationCard(
              title: S.of(context).centerRole,
              content: centerRole,
              code: projectDetails.consultingCenterRole?.name,
            ),
          ],
          selectable: true,
        );
      },
    );
    // return Obx(
    //   () => AnimatedContainer(
    //     // height: controller.containerHeight.value,
    //     duration: Duration(milliseconds: 500),
    //     child: Stack(
    //       children: [
    //         controller.containerState.value == ContainerState.Shrink
    //             ? SizedBox(
    //                 height: 75.0,
    //               )
    //             : IdentificationDetails(),
    //         Positioned(
    //           top: 0.0,
    //           left: 0.0,
    //           right: 0.0,
    //           child: GestureDetector(
    //             onTap: () => controller.changeContainerState(),
    //             child: ThemedDataViewer(
    //               selectable: false,
    //               title: S.of(context).identificationCode,
    //               margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
    //               content: controller.projectDetails.value.projectCode,
    //               borderRadius:
    //                   controller.containerState.value != ContainerState.Expanded
    //                       ? null
    //                       : BorderRadius.only(
    //                           bottomRight: Radius.circular(
    //                             2.5,
    //                           ),
    //                           bottomLeft: Radius.circular(
    //                             2.5,
    //                           ),
    //                           topLeft: Radius.circular(
    //                             25.0,
    //                           ),
    //                           topRight: Radius.circular(
    //                             25.0,
    //                           ),
    //                         ),
    //               trailing: Icon(
    //                 controller.containerState.value == ContainerState.Expanded
    //                     ? Icons.keyboard_arrow_up_rounded
    //                     : Icons.keyboard_arrow_down_rounded,
    //                 size: 34.0,
    //                 color: ColorUtil.primaryColor,
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
