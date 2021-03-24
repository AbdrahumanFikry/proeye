//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'center_main_work_vm.g.dart';

abstract class CenterMainWorkVM
    implements Built<CenterMainWorkVM, CenterMainWorkVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: r'iconUrl')
  String get iconUrl;

  // Boilerplate code needed to wire-up generated code
  CenterMainWorkVM._();

  static void _initializeBuilder(CenterMainWorkVMBuilder b) => b;

  factory CenterMainWorkVM([void updates(CenterMainWorkVMBuilder b)]) =
      _$CenterMainWorkVM;
  static Serializer<CenterMainWorkVM> get serializer =>
      _$centerMainWorkVMSerializer;
}
