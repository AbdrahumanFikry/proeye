import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/appDirectionality.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/user_view_model.dart';

class UserProfileView extends StatelessWidget {
  final UserViewModel userData;

  UserProfileView(
    this.userData,
  );

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: GlobalAppBar(
        title: S.of(context).profile,
        enableBack: true,
      ),
      body: AnimatedListHandler(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Neumorphic(
                style: NeumorphicStyle(
                  depth: -5.0,
                  color: ColorUtil.backgroundColor,
                  boxShape: NeumorphicBoxShape.circle(),
                ),
                //padding: const EdgeInsets.all(2.0),
                child: userData.photoUrl != null
                    ? CachedNetworkImage(
                        imageUrl: userData.photoUrl,
                        fit: BoxFit.cover,
                        width: Get.width / 3,
                        height: Get.width / 3,
                      )
                    : Icon(
                        FontAwesomeIcons.user,
                        color: ColorUtil.primaryColor,
                        size: 60.0,
                      ),
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          ThemedDataViewer(
            title: S.of(context).name,
            content: userData.nameAr,
          ),
          ThemedDataViewer(
            title: S.of(context).nationalId,
            content: '*****${userData?.id?.substring(0, 9)}',
          ),
          ThemedDataViewer(
            title: S.of(context).jobDesc,
            content: userData?.jobDesc,
          ),
          ThemedDataViewer(
            title: S.of(context).email,
            content: userData?.email,
          ),
          ThemedDataViewer(
            title: S.of(context).phone1,
            content: userData?.phoneNumber,
          ),
        ],
      ),
    );
  }
}
