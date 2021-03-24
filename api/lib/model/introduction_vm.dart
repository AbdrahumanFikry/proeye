//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'introduction_vm.g.dart';

abstract class IntroductionVM
    implements Built<IntroductionVM, IntroductionVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'introduction')
  String get introduction;

  @nullable
  @BuiltValueField(wireName: r'images')
  BuiltList<String> get images;

  // Boilerplate code needed to wire-up generated code
  IntroductionVM._();

  static void _initializeBuilder(IntroductionVMBuilder b) => b;

  factory IntroductionVM([void updates(IntroductionVMBuilder b)]) =
      _$IntroductionVM;
  static Serializer<IntroductionVM> get serializer =>
      _$introductionVMSerializer;
}
