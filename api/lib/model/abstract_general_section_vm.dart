//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'abstract_general_section_vm.g.dart';

abstract class AbstractGeneralSectionVM
    implements
        Built<AbstractGeneralSectionVM, AbstractGeneralSectionVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'sectionId')
  String get sectionId;

  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  // Boilerplate code needed to wire-up generated code
  AbstractGeneralSectionVM._();

  static void _initializeBuilder(AbstractGeneralSectionVMBuilder b) => b;

  factory AbstractGeneralSectionVM(
          [void updates(AbstractGeneralSectionVMBuilder b)]) =
      _$AbstractGeneralSectionVM;
  static Serializer<AbstractGeneralSectionVM> get serializer =>
      _$abstractGeneralSectionVMSerializer;
}
