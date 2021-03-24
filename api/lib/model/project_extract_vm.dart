//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/app_file_view_model.dart';
import 'package:proeye_api/model/user_view_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/extract_target_vm.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_extract_vm.g.dart';

abstract class ProjectExtractVM
    implements Built<ProjectExtractVM, ProjectExtractVMBuilder> {
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

  @nullable
  @BuiltValueField(wireName: r'issuer')
  UserViewModel get issuer;

  @nullable
  @BuiltValueField(wireName: r'files')
  BuiltList<AppFileViewModel> get files;

  @nullable
  @BuiltValueField(wireName: r'targets')
  BuiltList<ExtractTargetVM> get targets;

  // Boilerplate code needed to wire-up generated code
  ProjectExtractVM._();

  static void _initializeBuilder(ProjectExtractVMBuilder b) => b;

  factory ProjectExtractVM([void updates(ProjectExtractVMBuilder b)]) =
      _$ProjectExtractVM;
  static Serializer<ProjectExtractVM> get serializer =>
      _$projectExtractVMSerializer;
}
