import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/circleButton.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/modules/rooms/controllers/rooms_controller.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';
import 'package:pro_eye/generated/l10n.dart';

class RoomsDialogs {
  static Future<bool> addRoom() async {
    // final res = await AppUtil.dialogStructure(
    //   S.current.addNewRoom,
    //   loading: RoomsController.to.newRoomLoading,
    //   content: Obx(
    //     () {
    //       return Form(
    //         key: RoomsController.to.newRoomFormKey,
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             ThemedTextFormField.clean(
    //               controller: RoomsController.to.roomName,
    //               hintText: S.current.roomName,
    //               readOnly: false,
    //               borderRadius: 50.0,
    //               validator: QuickTextValidator(),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.symmetric(
    //                 horizontal: 20.0,
    //                 vertical: 7.5,
    //               ),
    //               child: Row(
    //                 children: [
    //                   Checkbox(
    //                     hoverColor: ColorUtil.primaryColor,
    //                     checkColor: Colors.white,
    //                     activeColor: ColorUtil.primaryColor,
    //                     focusColor: ColorUtil.primaryColor,
    //                     value: RoomsController.to.roomIsPublic.value,
    //                     onChanged: (bool val) {
    //                       RoomsController.to.roomIsPublic.value = val;
    //                     },
    //                   ),
    //                   const SizedBox(
    //                     width: 10.0,
    //                   ),
    //                   Text(
    //                     S.current.public,
    //                     style: TextStyle(
    //                       color: ColorUtil.primaryColor,
    //                       fontWeight: FontWeight.w800,
    //                       fontSize: 36.sp,
    //                     ),
    //                     textAlign: TextAlign.start,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             RoomsController.to.filesToUpload.isEmpty
    //                 ? Row(
    //                     children: [
    //                       CircleButton(
    //                         onPressed: () async =>
    //                             await RoomsController.to.pickFiles(
    //                           fileType: FileType.image,
    //                         ),
    //                         margin: EdgeInsets.symmetric(
    //                           horizontal: 20.0,
    //                           vertical: 10.0,
    //                         ),
    //                         child: Icon(
    //                           Icons.add,
    //                           color: ColorUtil.primaryColor,
    //                         ),
    //                       ),
    //                       Text(
    //                         S.current.photo,
    //                         style: TextStyle(
    //                           color: ColorUtil.primaryColor,
    //                           fontWeight: FontWeight.w700,
    //                           fontSize: 40.sp,
    //                         ),
    //                       ),
    //                     ],
    //                   )
    //                 : Padding(
    //                     padding: const EdgeInsets.symmetric(
    //                       horizontal: 20.0,
    //                       vertical: 10.0,
    //                     ),
    //                     child: Stack(
    //                       children: [
    //                         Padding(
    //                           padding: const EdgeInsets.only(
    //                             top: 10.0,
    //                             right: 10.0,
    //                           ),
    //                           child: Image.file(
    //                             File(RoomsController.to.filesToUpload.first),
    //                             height: 80.0,
    //                             width: 80.0,
    //                             fit: BoxFit.cover,
    //                           ),
    //                         ),
    //                         Positioned(
    //                           top: 0.0,
    //                           right: 0.0,
    //                           child: GestureDetector(
    //                             onTap: () => RoomsController
    //                                 .to.filesStateController.value
    //                                 .resetUploadFiles(),
    //                             child: Icon(
    //                               Icons.cancel,
    //                               color: ColorUtil.errorColor,
    //                               size: 18,
    //                             ),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //           ],
    //         ),
    //       );
    //     },
    //   ),
    // );

    // if (res == true) {
    //   await RoomsController.to.addNewRoom();
    // }
    return false;
  }

  static Future<bool> addParticipant(String roomID) async {
    // final res = await AppUtil.dialogStructure(
    //   S.current.addParticipant,
    //   loading: RoomsController.to.newParticipantsLoading,
    //   content: Obx(
    //     () {
    //       return Form(
    //         key: RoomsController.to.newParticipantFormKey,
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             ThemedTextFormField.clean(
    //               controller: RoomsController.to.participantIdController,
    //               hintText: S.current.nationalId,
    //               keyBoardType: TextInputType.number,
    //               readOnly: false,
    //               borderRadius: 50.0,
    //               validator: QuickTextValidator(isNationalId: true),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.symmetric(
    //                 horizontal: 20.0,
    //                 vertical: 7.5,
    //               ),
    //               child: Row(
    //                 children: [
    //                   Checkbox(
    //                     hoverColor: ColorUtil.primaryColor,
    //                     checkColor: Colors.white,
    //                     activeColor: ColorUtil.primaryColor,
    //                     focusColor: ColorUtil.primaryColor,
    //                     value: RoomsController.to.participantIsAdmin.value,
    //                     onChanged: (bool val) {
    //                       RoomsController.to.participantIsAdmin.value = val;
    //                     },
    //                   ),
    //                   const SizedBox(
    //                     width: 10.0,
    //                   ),
    //                   Text(
    //                     S.current.admin,
    //                     style: TextStyle(
    //                       color: ColorUtil.primaryColor,
    //                       fontWeight: FontWeight.w800,
    //                       fontSize: 36.sp,
    //                     ),
    //                     textAlign: TextAlign.start,
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       );
    //     },
    //   ),
    // );
    // if (res == true) {
    //   await RoomsController.to.addNewParticipants(roomID);
    // }
    return false;
  }
}
