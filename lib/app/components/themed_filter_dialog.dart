import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class ThemedFilterDialog extends StatelessWidget {
  final Widget child;

  const ThemedFilterDialog({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: AppUtil.isLtr ? TextDirection.ltr : TextDirection.rtl,
      child: AlertDialog(
        title: Text(S.current.filter),
        content: child,
        actions: [
          TextButton(
            child: Text(S.current.done),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
