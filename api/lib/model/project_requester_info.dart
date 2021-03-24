//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/company_user_relation_types_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_requester_info.g.dart';

abstract class ProjectRequesterInfo
    implements Built<ProjectRequesterInfo, ProjectRequesterInfoBuilder> {
  @nullable
  @BuiltValueField(wireName: r'requesterEmail')
  String get requesterEmail;

  @nullable
  @BuiltValueField(wireName: r'requesterPhone')
  String get requesterPhone;

  @nullable
  @BuiltValueField(wireName: r'requesterName')
  String get requesterName;

  @nullable
  @BuiltValueField(wireName: r'requesterLandline')
  String get requesterLandline;

  @nullable
  @BuiltValueField(wireName: r'requesterRelationToOwnerCompany')
  CompanyUserRelationTypesEnum get requesterRelationToOwnerCompany;
  // enum requesterRelationToOwnerCompanyEnum {  Manager,  Representative,  Other,  };

  @nullable
  @BuiltValueField(wireName: r'requesterRelationToOwnerCompanyDesc')
  String get requesterRelationToOwnerCompanyDesc;

  // Boilerplate code needed to wire-up generated code
  ProjectRequesterInfo._();

  static void _initializeBuilder(ProjectRequesterInfoBuilder b) => b;

  factory ProjectRequesterInfo([void updates(ProjectRequesterInfoBuilder b)]) =
      _$ProjectRequesterInfo;
  static Serializer<ProjectRequesterInfo> get serializer =>
      _$projectRequesterInfoSerializer;
}
