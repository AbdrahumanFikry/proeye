//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'boolean_data_wrapper_vm.g.dart';

abstract class BooleanDataWrapperVM
    implements Built<BooleanDataWrapperVM, BooleanDataWrapperVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'data')
  bool get data;

  // Boilerplate code needed to wire-up generated code
  BooleanDataWrapperVM._();

  static void _initializeBuilder(BooleanDataWrapperVMBuilder b) => b;

  factory BooleanDataWrapperVM([void updates(BooleanDataWrapperVMBuilder b)]) =
      _$BooleanDataWrapperVM;
  static Serializer<BooleanDataWrapperVM> get serializer =>
      _$booleanDataWrapperVMSerializer;
}
