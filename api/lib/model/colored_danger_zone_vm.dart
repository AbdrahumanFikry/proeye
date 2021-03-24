//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'colored_danger_zone_vm.g.dart';

abstract class ColoredDangerZoneVM
    implements Built<ColoredDangerZoneVM, ColoredDangerZoneVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'isDone')
  bool get isDone;

  @nullable
  @BuiltValueField(wireName: r'dangerPercent')
  double get dangerPercent;

  @nullable
  @BuiltValueField(wireName: r'colorValue')
  int get colorValue;

  @nullable
  @BuiltValueField(wireName: r'colorHex')
  String get colorHex;

  // Boilerplate code needed to wire-up generated code
  ColoredDangerZoneVM._();

  static void _initializeBuilder(ColoredDangerZoneVMBuilder b) => b;

  factory ColoredDangerZoneVM([void updates(ColoredDangerZoneVMBuilder b)]) =
      _$ColoredDangerZoneVM;
  static Serializer<ColoredDangerZoneVM> get serializer =>
      _$coloredDangerZoneVMSerializer;
}
