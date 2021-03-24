import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/app_file_view_model.dart';
import 'package:proeye_api/model/self_or_other_enum.dart';

class MessageViewer extends StatelessWidget {
  final String id;
  final SelfOrOtherEnum type;
  final String content;
  final String sender;
  final BuiltList<AppFileViewModel> files;
  final String date;
  final bool pinned;
  final bool isAdmin;
  final Future<void> Function(bool pinned, String messageId) changePinState;
  MessageViewer({
    this.id,
    this.content,
    this.type,
    this.date,
    this.sender,
    this.files,
    this.pinned = false,
    @required this.isAdmin,
    @required this.changePinState,
  });

  @override
  Widget build(BuildContext context) {
    double margin = Get.width * 0.35 ?? 100.0;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (pinned) _showOptions(pinned, id),
            Expanded(
              child: GestureDetector(
                onLongPress: () async {
                  if (!pinned && isAdmin) {
                    bool result = await AppUtil.showAlertDialog(
                      title: S.of(context).alert,
                      body: S.of(context).pin,
                      enableCancel: true,
                    );
                    if (result) await changePinState(true, id);
                  }
                },
                child: Row(
                  textDirection: AppUtil.isLtr
                      ? (type == SelfOrOtherEnum.self
                          ? TextDirection.ltr
                          : TextDirection.rtl)
                      : (type == SelfOrOtherEnum.self
                          ? TextDirection.rtl
                          : TextDirection.ltr),
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: type == SelfOrOtherEnum.self
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                        children: [
                          if (sender != null)
                            Text(
                              sender,
                              style: TextStyle(
                                color: ColorUtil.primaryColor,
                                fontSize: 36.sp,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          // files.length > 0 && files != null
                          //     ? Neumorphic(
                          //         padding: EdgeInsets.all(
                          //           3.5,
                          //         ),
                          //         margin: EdgeInsets.only(
                          //           left: type == SelfOrOtherEnum.self ? margin : 5.0,
                          //           right: type == SelfOrOtherEnum.self ? 5.0 : margin,
                          //         ),
                          //         style: NeumorphicStyle(
                          //           color: type == SelfOrOtherEnum.self
                          //               ? ColorUtil.primaryColor
                          //               : ColorUtil.backgroundColor,
                          //           boxShape: NeumorphicBoxShape.roundRect(
                          //             messageBorderRadius(),
                          //           ),
                          //           shadowDarkColor: type == SelfOrOtherEnum.self
                          //               ? ColorUtil.primaryColor
                          //               : null,
                          //           shadowLightColor: type == SelfOrOtherEnum.self
                          //               ? ColorUtil.primaryColor.withOpacity(0.2)
                          //               : null,
                          //         ),
                          //         child: Column(
                          //           crossAxisAlignment: type == SelfOrOtherEnum.self
                          //               ? CrossAxisAlignment.end
                          //               : CrossAxisAlignment.start,
                          //           children: [
                          //             ListView.builder(
                          //               itemCount: files.length,
                          //               shrinkWrap: true,
                          //               physics: NeverScrollableScrollPhysics(),
                          //               itemBuilder: (context, index) {
                          //                 final file = files[index];
                          //                 return file.fullUrl.contains('pdf')
                          //                     ? PdfHandler(
                          //                         file.fullUrl,
                          //                         file.fileName,
                          //                       )
                          //                     : file.fullUrl == PathUtil.waitingPath
                          //                         ? SizedBox(
                          //                             width: Get.width / 2,
                          //                             height: Get.width / 2,
                          //                             child: Padding(
                          //                               padding:
                          //                                   const EdgeInsets.symmetric(
                          //                                 vertical: 60.0,
                          //                               ),
                          //                               child: Center(
                          //                                 child: Image.asset(
                          //                                   file.fullUrl,
                          //                                   color: Colors.white,
                          //                                   fit: BoxFit.contain,
                          //                                 ),
                          //                               ),
                          //                             ),
                          //                           )
                          //                         : InkWell(
                          //                             child: SizedBox(
                          //                               width: Get.width - margin,
                          //                               height: Get.width - margin,
                          //                               child: Image(
                          //                                 image:
                          //                                     CachedNetworkImageProvider(
                          //                                         file.fullUrl),
                          //                                 fit: BoxFit.cover,
                          //                               ),
                          //                             ),
                          //                             onTap: () {
                          //                               Get.to(() => PhotoView(
                          //                                   imageProvider:
                          //                                       CachedNetworkImageProvider(
                          //                                           file.fullUrl)));
                          //                             },
                          //                           );
                          //               },
                          //             ),
                          //           ],
                          //         ),
                          //       )
                          // : SizedBox.shrink(),
                          if (content != null) ...[
                            Neumorphic(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 5.0,
                              ),
                              margin: EdgeInsets.only(
                                top: 5.0,
                                bottom: 5.0,
                                left: type == SelfOrOtherEnum.self ? 30.0 : 5.0,
                                right:
                                    type == SelfOrOtherEnum.self ? 5.0 : 30.0,
                              ),
                              style: NeumorphicStyle(
                                color: type == SelfOrOtherEnum.self
                                    ? ColorUtil.primaryColor
                                    : ColorUtil.backgroundColor,
                                boxShape: NeumorphicBoxShape.roundRect(
                                  messageBorderRadius(),
                                ),
                                shadowDarkColor: type == SelfOrOtherEnum.self
                                    ? ColorUtil.primaryColor
                                    : null,
                                shadowLightColor: type == SelfOrOtherEnum.self
                                    ? ColorUtil.primaryColor.withOpacity(0.2)
                                    : null,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text(
                                  content ?? '',
                                  style: TextStyle(
                                    color: type == SelfOrOtherEnum.self
                                        ? Colors.white
                                        : ColorUtil.primaryColor,
                                    fontSize: 16.0,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 2.5,
                                horizontal: 10.0,
                              ),
                              child: Text(
                                date ?? '',
                                style: TextStyle(
                                  color: ColorUtil.greyColor,
                                  fontSize: 11.0,
                                ),
                              ),
                            ),
                          ],
                          const SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                    ),
                    if (files.length > 0)
                      IconButton(
                        icon: Icon(Icons.attach_file),
                        onPressed: () {
                          Get.toNamed(Routes.ATTACHMENTS, arguments: files);
                        },
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BorderRadius messageBorderRadius() {
    return BorderRadius.only(
      topLeft: Radius.circular(
        10.0,
      ),
      bottomLeft: Radius.circular(
        type == SelfOrOtherEnum.self ? 10.0 : 0.0,
      ),
      topRight: Radius.circular(
        10.0,
      ),
      bottomRight: Radius.circular(type == SelfOrOtherEnum.self ? 0.0 : 10.0),
    );
  }

  Widget _showOptions(bool pinned, String messageId) {
    return PopupMenuButton(
      elevation: 7.0,
      icon: Icon(
        FontAwesomeIcons.thumbtack,
        color: ColorUtil.primaryColor,
        size: 16.0,
      ),
      itemBuilder: (_) => <PopupMenuItem<String>>[
        new PopupMenuItem<String>(
          child: Container(
            width: 200.0,
            child: Text(
              pinned ? S.current.unPin : S.current.pin,
              style: TextStyle(
                color: ColorUtil.primaryColor,
                fontSize: 36.sp,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          value: pinned ? S.current.unPin : S.current.pin,
        ),
      ],
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 10.0,
      ),
      onSelected: (String val) async {
        if (isAdmin) {
          await changePinState(!pinned, messageId);
        }
      },
    );
  }
}
