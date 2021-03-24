//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_extract_abstract_vm.g.dart';

abstract class ProjectExtractAbstractVM
    implements
        Built<ProjectExtractAbstractVM, ProjectExtractAbstractVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'extractId')
  String get extractId;

  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: r'type')
  String get type;

  @nullable
  @BuiltValueField(wireName: r'issuedAt')
  DateTime get issuedAt;

  @nullable
  @BuiltValueField(wireName: r'isIncoming')
  bool get isIncoming;

  // Boilerplate code needed to wire-up generated code
  ProjectExtractAbstractVM._();

  static void _initializeBuilder(ProjectExtractAbstractVMBuilder b) => b;

  factory ProjectExtractAbstractVM(
          [void updates(ProjectExtractAbstractVMBuilder b)]) =
      _$ProjectExtractAbstractVM;
  static Serializer<ProjectExtractAbstractVM> get serializer =>
      _$projectExtractAbstractVMSerializer;
}
