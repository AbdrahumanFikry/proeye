//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'abstract_general_activity_vm.g.dart';

abstract class AbstractGeneralActivityVM
    implements
        Built<AbstractGeneralActivityVM, AbstractGeneralActivityVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'activityId')
  String get activityId;

  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: r'fullImageUrl')
  String get fullImageUrl;

  // Boilerplate code needed to wire-up generated code
  AbstractGeneralActivityVM._();

  static void _initializeBuilder(AbstractGeneralActivityVMBuilder b) => b;

  factory AbstractGeneralActivityVM(
          [void updates(AbstractGeneralActivityVMBuilder b)]) =
      _$AbstractGeneralActivityVM;
  static Serializer<AbstractGeneralActivityVM> get serializer =>
      _$abstractGeneralActivityVMSerializer;
}
