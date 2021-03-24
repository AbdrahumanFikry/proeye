//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'string_data_wrapper_vm.g.dart';

abstract class StringDataWrapperVM
    implements Built<StringDataWrapperVM, StringDataWrapperVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'data')
  String get data;

  // Boilerplate code needed to wire-up generated code
  StringDataWrapperVM._();

  static void _initializeBuilder(StringDataWrapperVMBuilder b) => b;

  factory StringDataWrapperVM([void updates(StringDataWrapperVMBuilder b)]) =
      _$StringDataWrapperVM;
  static Serializer<StringDataWrapperVM> get serializer =>
      _$stringDataWrapperVMSerializer;
}
