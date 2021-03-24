import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/circleButton.dart';
import 'package:pro_eye/app/modules/chat/views/infoView.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/pathUtil.dart';
import 'package:proeye_api/model/app_file_view_model.dart';

class GlobalAppBar extends StatelessWidget {
  final String title;
  final Color textColor;
  final Color iconColor;
  final bool enableDrawer;
  final bool enableBack;

  final bool enableInfo;
  final Iterable<AppFileViewModel> attachments;
  final Function toOpenDrawer;
  final List<Widget> trailing;

  GlobalAppBar({
    this.title = '',
    this.attachments,
    this.enableDrawer = false,
    this.enableBack = false,
    this.enableInfo = false,
    this.textColor = ColorUtil.primaryColor,
    this.iconColor = ColorUtil.primaryColor,
    this.toOpenDrawer,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10.0,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              title ?? '',
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w800,
                fontSize: 56.sp,
              ),
            ),
          ),
          Row(
            textDirection:
                AppUtil.isLtr ? TextDirection.ltr : TextDirection.rtl,
            children: [
              if (enableDrawer && !enableBack)
                CircleButton(
                  onPressed: toOpenDrawer,
                  child: Icon(
                    Icons.menu,
                    color: iconColor,
                  ),
                ),
              if (enableBack)
                CircleButton(
                  padding: const EdgeInsets.all(10.0),
                  onPressed: () => Get.back(),
                  child: Icon(
                    AppUtil.isLtr
                        ? Icons.arrow_forward_ios_rounded
                        : Icons.arrow_back_ios_rounded,
                    color: iconColor,
                  ),
                ),
              Spacer(),
              if (attachments != null)
                CircleButton(
                  margin: EdgeInsets.only(
                    right: AppUtil.isLtr ? 0.0 : 10.0,
                    left: AppUtil.isLtr ? 10.0 : 0.0,
                  ),
                  padding: const EdgeInsets.all(10.0),
                  onPressed: () => Get.toNamed(
                    Routes.ATTACHMENTS,
                    arguments: attachments,
                  ),
                  child: SvgPicture.asset(
                    PathUtil.attachmentsPathSVG,
                    color: ColorUtil.primaryColor,
                    width: 25.0,
                    height: 25.0,
                  ),
                ),
              if (enableInfo)
                CircleButton(
                  margin: EdgeInsets.only(
                    right: AppUtil.isLtr ? 0.0 : 10.0,
                    left: AppUtil.isLtr ? 10.0 : 0.0,
                  ),
                  padding: const EdgeInsets.all(10.0),
                  onPressed: () {
                    Get.to(
                      () => InfoView(),
                    );
                  },
                  child: SvgPicture.asset(
                    PathUtil.infoPathSVG,
                    color: ColorUtil.primaryColor,
                    width: 25.0,
                    height: 25.0,
                  ),
                ),
              if (trailing != null) ...trailing,
            ],
          ),
        ],
      ),
    );
  }
}

class ThemedGlobalAppBar extends StatelessWidget {
  final String title;
  final List<Widget> actions;
  final Color textColor;
  final Color iconColor;
  final bool enableBack;
  const ThemedGlobalAppBar({
    Key key,
    @required this.title,
    this.actions = const <Widget>[],
    this.textColor = ColorUtil.primaryColor,
    this.enableBack = false,
    this.iconColor = ColorUtil.primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10.0,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              title ?? '',
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w800,
                fontSize: 56.sp,
              ),
            ),
          ),
          Row(
            textDirection:
                AppUtil.isLtr ? TextDirection.ltr : TextDirection.rtl,
            children: [
              if (enableBack)
                CircleButton(
                  padding: const EdgeInsets.all(10.0),
                  onPressed: () => Get.back(),
                  child: Icon(
                    AppUtil.isLtr
                        ? Icons.arrow_forward_ios_rounded
                        : Icons.arrow_back_ios_rounded,
                    color: iconColor,
                  ),
                ),
              Spacer(),
              ...actions,
            ],
          ),
        ],
      ),
    );
  }
}
