import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/modules/extract_details/components/single_review.dart';
import 'package:pro_eye/app/modules/extract_details/controllers/extract_details_controller.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class ReviewsBlock extends GetView<ExtractDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final targets =
            controller?.extractDetails?.value?.targets?.toList() ?? [];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                S.of(context).reviews,
                style: TextStyle(
                  color: ColorUtil.primaryColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 60.sp,
                ),
                textAlign: TextAlign.start,
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
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: AnimatedListHandler(
                shrinkWrap: true,
                noScroll: true,
                children: [
                  ...targets.map(
                    (target) {
                      print(target.targetGlobalRoleOrProjectRole);
                      return SingleReview(
                        target: target,
                      );
                    },
                  ).toList(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
