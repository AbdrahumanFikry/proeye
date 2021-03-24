import 'package:built_value/built_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/emptyWidget.dart';

class AnimatedListHandler extends StatelessWidget {
  final List<Widget> children;
  final Widget Function(BuildContext ctx, int position) itemBuilder;
  final int itemCount;
  final Future<void> Function() onRefresh;
  final GlobalKey<RefreshIndicatorState> refreshIndicatorKey;
  final bool shrinkWrap;
  final bool noScroll;
  final bool noAnimation;
  final Widget Function(BuildContext context) listBuilder;
  AnimatedListHandler({
    @required List<Widget> children,
    this.noScroll = false,
    this.shrinkWrap = false,
    this.onRefresh,
    this.refreshIndicatorKey,
    this.noAnimation = false,
  })  : itemBuilder = null,
        this.children = children ?? <Widget>[],
        itemCount = children?.length ?? 0,
        listBuilder = null;

  AnimatedListHandler.builder({
    @required this.itemBuilder,
    @required this.itemCount,
    this.noScroll = false,
    this.shrinkWrap = false,
    this.onRefresh,
    this.refreshIndicatorKey,
    this.noAnimation = false,
  })  : children = null,
        assert(itemBuilder != null),
        assert(itemCount != null),
        listBuilder = null;

  AnimatedListHandler.listBuilder({
    @required this.listBuilder,
    this.noScroll = false,
    this.onRefresh,
    this.refreshIndicatorKey,
    this.noAnimation = false,
  })  : children = null,
        itemBuilder = null,
        itemCount = null,
        shrinkWrap = null;

  @override
  Widget build(BuildContext context) {
    final lv = listBuilder != null
        ? listBuilder(context)
        : itemBuilder == null
            ? ListView(
                shrinkWrap: shrinkWrap,
                physics: noScroll ? NeverScrollableScrollPhysics() : null,
                children: List<Widget>.generate(
                  children.length,
                  (position) {
                    return _getActualLVChild(
                      children[position],
                      position,
                    );
                  },
                ),
              )
            : ListView.builder(
                shrinkWrap: shrinkWrap,
                physics: noScroll ? NeverScrollableScrollPhysics() : null,
                itemCount: itemCount,
                itemBuilder: (BuildContext context, int position) {
                  return _getActualLVChild(
                    itemBuilder(context, position),
                    position,
                  );
                },
              );
    final child = itemCount == 0
        ? LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                physics: noScroll
                    ? NeverScrollableScrollPhysics()
                    : AlwaysScrollableScrollPhysics(),
                child: SizedBox(
                  height: constraints.maxHeight == double.infinity
                      ? Get.height / 3
                      : constraints.maxHeight,
                  child: EmptyWidget(),
                ),
              );
            },
          )
        : lv;

    final animationLimiterChild = onRefresh == null
        ? child
        : RefreshIndicator(
            onRefresh: onRefresh,
            key: refreshIndicatorKey,
            child: child,
          );
    return noAnimation
        ? animationLimiterChild
        : AnimationLimiter(
            child: animationLimiterChild,
          );
  }

  Widget _getActualLVChild(Widget c, int position) {
    if (noAnimation) {
      return c;
    }
    return AnimationConfiguration.staggeredList(
      position: position,
      duration: const Duration(milliseconds: 500),
      child: SlideAnimation(
        verticalOffset: 50.0,
        child: FadeInAnimation(
          child: c,
        ),
      ),
    );
  }
}
