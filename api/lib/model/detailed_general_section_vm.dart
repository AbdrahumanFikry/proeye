//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/general_post_vm.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'detailed_general_section_vm.g.dart';

abstract class DetailedGeneralSectionVM
    implements
        Built<DetailedGeneralSectionVM, DetailedGeneralSectionVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'sectionId')
  String get sectionId;

  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: r'posts')
  BuiltList<GeneralPostVM> get posts;

  // Boilerplate code needed to wire-up generated code
  DetailedGeneralSectionVM._();

  static void _initializeBuilder(DetailedGeneralSectionVMBuilder b) => b;

  factory DetailedGeneralSectionVM(
          [void updates(DetailedGeneralSectionVMBuilder b)]) =
      _$DetailedGeneralSectionVM;
  static Serializer<DetailedGeneralSectionVM> get serializer =>
      _$detailedGeneralSectionVMSerializer;
}
