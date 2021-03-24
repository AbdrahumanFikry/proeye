//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/per_project_user_role_vm.dart';
import 'package:proeye_api/model/colored_danger_zone_vm.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_abstract_view_model.g.dart';

abstract class ProjectAbstractViewModel
    implements
        Built<ProjectAbstractViewModel, ProjectAbstractViewModelBuilder> {
  @nullable
  @BuiltValueField(wireName: r'userRelations')
  BuiltList<PerProjectUserRoleVM> get userRelations;

  @nullable
  @BuiltValueField(wireName: r'projectId')
  String get projectId;

  @nullable
  @BuiltValueField(wireName: r'projectName')
  String get projectName;

  @nullable
  @BuiltValueField(wireName: r'projectCode')
  String get projectCode;

  @nullable
  @BuiltValueField(wireName: r'ownerCompanyName')
  String get ownerCompanyName;

  @nullable
  @BuiltValueField(wireName: r'executerCompanyName')
  String get executerCompanyName;

  @nullable
  @BuiltValueField(wireName: r'actualEnd')
  DateTime get actualEnd;

  @nullable
  @BuiltValueField(wireName: r'taskDangerZones')
  BuiltList<ColoredDangerZoneVM> get taskDangerZones;

  // Boilerplate code needed to wire-up generated code
  ProjectAbstractViewModel._();

  static void _initializeBuilder(ProjectAbstractViewModelBuilder b) => b;

  factory ProjectAbstractViewModel(
          [void updates(ProjectAbstractViewModelBuilder b)]) =
      _$ProjectAbstractViewModel;
  static Serializer<ProjectAbstractViewModel> get serializer =>
      _$projectAbstractViewModelSerializer;
}
