//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_name_id.g.dart';

abstract class ProjectNameId
    implements Built<ProjectNameId, ProjectNameIdBuilder> {
  @nullable
  @BuiltValueField(wireName: r'projectId')
  String get projectId;

  @nullable
  @BuiltValueField(wireName: r'projectName')
  String get projectName;

  // Boilerplate code needed to wire-up generated code
  ProjectNameId._();

  static void _initializeBuilder(ProjectNameIdBuilder b) => b;

  factory ProjectNameId([void updates(ProjectNameIdBuilder b)]) =
      _$ProjectNameId;
  static Serializer<ProjectNameId> get serializer => _$projectNameIdSerializer;
}
