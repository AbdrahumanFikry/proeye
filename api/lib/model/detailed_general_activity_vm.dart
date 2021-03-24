//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/abstract_general_section_vm.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'detailed_general_activity_vm.g.dart';

abstract class DetailedGeneralActivityVM
    implements
        Built<DetailedGeneralActivityVM, DetailedGeneralActivityVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'activityId')
  String get activityId;

  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: r'fullImageUrl')
  String get fullImageUrl;

  @nullable
  @BuiltValueField(wireName: r'subSections')
  BuiltList<AbstractGeneralSectionVM> get subSections;

  // Boilerplate code needed to wire-up generated code
  DetailedGeneralActivityVM._();

  static void _initializeBuilder(DetailedGeneralActivityVMBuilder b) => b;

  factory DetailedGeneralActivityVM(
          [void updates(DetailedGeneralActivityVMBuilder b)]) =
      _$DetailedGeneralActivityVM;
  static Serializer<DetailedGeneralActivityVM> get serializer =>
      _$detailedGeneralActivityVMSerializer;
}
