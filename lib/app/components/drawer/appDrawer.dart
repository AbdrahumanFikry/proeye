import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:pro_eye/app/components/drawer/drawerBody.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';

import 'filterDrawer.dart';

class AppDrawer extends StatelessWidget {
  final GlobalKey<InnerDrawerState> innerDrawerKey;
  final Widget child;

  const AppDrawer({
    @required this.innerDrawerKey,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InnerDrawer(
        key: innerDrawerKey,
        onTapClose: true,
        swipe: true,
        colorTransitionChild: ColorUtil.backgroundColor,
        colorTransitionScaffold: Colors.transparent,
        offset: IDOffset.only(bottom: 0.00, right: 0.0, left: 0.3),
        swipeChild: true,
        velocity: 20.0,
        scale: IDOffset.horizontal(1.0),
        proportionalChildArea: true,
        leftAnimationType: InnerDrawerAnimation.quadratic,
        rightAnimationType: InnerDrawerAnimation.quadratic,
        backgroundDecoration: BoxDecoration(
          color: ColorUtil.backgroundColor,
        ),
        boxShadow: [],
        leftChild: DrawerBody(
          innerDrawerKey: innerDrawerKey,
        ),
        rightChild: FilterDrawer(),
        scaffold: child,
      ),
    );
  }
}
