//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'int32_data_wrapper_vm.g.dart';

abstract class Int32DataWrapperVM
    implements Built<Int32DataWrapperVM, Int32DataWrapperVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'data')
  int get data;

  // Boilerplate code needed to wire-up generated code
  Int32DataWrapperVM._();

  static void _initializeBuilder(Int32DataWrapperVMBuilder b) => b;

  factory Int32DataWrapperVM([void updates(Int32DataWrapperVMBuilder b)]) =
      _$Int32DataWrapperVM;
  static Serializer<Int32DataWrapperVM> get serializer =>
      _$int32DataWrapperVMSerializer;
}
