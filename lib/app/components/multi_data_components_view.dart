import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/multiData.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';

enum ContainerState {
  Shrink,
  Expanded,
}

class MultiDataComponentsView extends StatefulWidget {
  final String title;
  final String content;
  final List<Widget> data;
  final bool selectable;
  MultiDataComponentsView(
    this.title,
    this.content,
    this.data, {
    this.selectable = false,
  });

  @override
  _MultiDataComponentsViewState createState() =>
      _MultiDataComponentsViewState();
}

class _MultiDataComponentsViewState extends State<MultiDataComponentsView> {
  double containerHeight = 80.0;
  ContainerState containerState = ContainerState.Shrink;

  void changeContainerState() {
    setState(() {
      if (containerState == ContainerState.Shrink) {
        containerHeight = Get.height * 0.5;
        containerState = ContainerState.Expanded;
      } else {
        containerHeight = null;
        containerState = ContainerState.Shrink;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      child: Stack(
        children: [
          containerState == ContainerState.Shrink
              ? SizedBox(
                  height: 75.0,
                )
              : MultiData(widget.data),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: GestureDetector(
              onTap: () => changeContainerState(),
              child: ThemedDataViewer(
                title: widget.title,
                content: widget.content,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                selectable: widget.selectable,
                borderRadius: containerState != ContainerState.Expanded
                    ? null
                    : BorderRadius.only(
                        bottomRight: Radius.circular(
                          2.5,
                        ),
                        bottomLeft: Radius.circular(
                          2.5,
                        ),
                        topLeft: Radius.circular(
                          25.0,
                        ),
                        topRight: Radius.circular(
                          25.0,
                        ),
                      ),
                trailing: Icon(
                  containerState == ContainerState.Expanded
                      ? Icons.keyboard_arrow_up_rounded
                      : Icons.keyboard_arrow_down_rounded,
                  size: 34.0,
                  color: ColorUtil.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
