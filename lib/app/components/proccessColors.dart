import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:proeye_api/model/colored_danger_zone_vm.dart';

class ProcessColors extends StatelessWidget {
  final NeumorphicStyle style;
  final EdgeInsets margins;
  final EdgeInsets padding;
  final List<ColoredDangerZoneVM> map;
  // int get completedCount => map.where((x) => x.isDone == true).length;
  // double get progress {
  //   return completedCount / map.length;
  // }

  ProcessColors(
    this.map, {
    this.padding = EdgeInsets.zero,
    this.margins = const EdgeInsets.symmetric(
      horizontal: 20.0,
      vertical: 5.0,
    ),
    NeumorphicStyle style,
  }) : this.style = style ??
            NeumorphicStyle(
              depth: 3.0,
              color: ColorUtil.backgroundColor,
              boxShape: NeumorphicBoxShape.roundRect(
                AppUtil.borderRadius,
              ),
            );

  @override
  Widget build(BuildContext context) {
    map.sort((x, y) => x.dangerPercent.compareTo(y.dangerPercent));
    var doneOnly = map.where((x) => x.isDone == true);
    var notDoneOnly = map.where((x) => x.isDone == false);
    var completedCount = doneOnly.length;
    var progress = completedCount / map.length;
    final firstColor = (notDoneOnly.length == 0
            ? null
            : Color(
                0xFF000000 + notDoneOnly.first?.colorValue,
              )) ??
        ColorUtil.greyColor;
    return map.length == 0 || map == null
        ? SizedBox.shrink()
        : Neumorphic(
            style: style,
            margin: margins,
            padding: padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    'نسبة الاستكمال:',
                    style: TextStyle(
                      color: ColorUtil.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 40.sp,
                    ),
                  ),
                ),
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 30,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Stack(
                        clipBehavior: Clip.antiAlias,
                        children: [
                          Positioned.fill(
                            child: Container(
                              color: Colors.grey,
                            ),
                          ),
                          PositionedDirectional(
                            start: 0,
                            end: constraints.maxWidth * (1 - progress),
                            bottom: 0,
                            top: 0,
                            child: Container(
                              color: ColorUtil.primaryColor,
                            ),
                          ),
                          Positioned.fill(
                            child: Text(
                              '${(progress * 100).toStringAsFixed(2)}%',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                if (notDoneOnly.length > 0)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(
                      'حالات المهام الغير مكتملة:',
                      style: TextStyle(
                        color: ColorUtil.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 40.sp,
                      ),
                    ),
                  ),
                if (notDoneOnly.length > 0)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: firstColor,
                        gradient: notDoneOnly.length < 2
                            ? LinearGradient(
                                colors: [
                                  firstColor,
                                  firstColor,
                                ],
                              )
                            : LinearGradient(
                                colors: [
                                  ...map
                                      .map(
                                        (e) => Color(0xFF000000 + e.colorValue),
                                      )
                                      .toList(),
                                ],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                              ),
                      ),
                    ),
                  ),
                Text(
                  'عدد المهام:' + ' $completedCount/${map.length}',
                  style: TextStyle(
                    color: ColorUtil.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 40.sp,
                  ),
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
  }
}

extension HexColor on Color {
  static Color fromRGB(int val) {
    if (val == null) return Colors.white;
    return Color(0xFF000000 + val);
  }

  // /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  // static Color fromHex(String hexString) {
  //   final buffer = StringBuffer();
  //   if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
  //   buffer.write(hexString.replaceFirst('#', ''));
  //   return Color(int.parse(buffer.toString(), radix: 16));
  // }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
