import 'package:flutter/material.dart';
import 'package:pro_eye/app/components/appDirectionality.dart';
import 'package:pro_eye/app/components/backGroundImage.dart';

class GlobalScaffold extends StatelessWidget {
  final Widget appBar;
  final Widget body;
  final Widget floatingActionButton;
  final Color backgroundColor;
  final bool useBackgroundImage;
  final bool usePoweredBy;
  const GlobalScaffold({
    Key key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.backgroundColor,
    this.useBackgroundImage = false,
    this.usePoweredBy = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold(
      backgroundColor:
          useBackgroundImage ? Colors.transparent : backgroundColor,
      body: appBar == null
          ? SafeArea(child: body)
          : SafeArea(
              child: Column(
                children: [
                  appBar,
                  Expanded(
                    child: body,
                  ),
                ],
              ),
            ),
      floatingActionButton: floatingActionButton,
    );
    return AppDirectionality(
      child: useBackgroundImage == true
          ? BackgroundImage(
              child: scaffold,
              powerredByBlock: usePoweredBy,
            )
          : scaffold,
    );
  }
}
