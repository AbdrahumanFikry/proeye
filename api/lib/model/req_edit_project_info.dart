//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/start_duration_dto.dart';
import 'package:proeye_api/model/company_user_relation_types_enum.dart';
import 'package:proeye_api/model/consulting_center_role_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'req_edit_project_info.g.dart';

abstract class ReqEditProjectInfo
    implements Built<ReqEditProjectInfo, ReqEditProjectInfoBuilder> {
  @nullable
  @BuiltValueField(wireName: r'cityId')
  int get cityId;

  @nullable
  @BuiltValueField(wireName: r'govId')
  int get govId;

  @nullable
  @BuiltValueField(wireName: r'projectDesc')
  String get projectDesc;

  @nullable
  @BuiltValueField(wireName: r'projectName')
  String get projectName;

  @nullable
  @BuiltValueField(wireName: r'notes')
  String get notes;

  @nullable
  @BuiltValueField(wireName: r'projectOwnerCompanyId')
  String get projectOwnerCompanyId;

  @nullable
  @BuiltValueField(wireName: r'isDirectSelection')
  bool get isDirectSelection;

  @nullable
  @BuiltValueField(wireName: r'executerSelectionDesc')
  String get executerSelectionDesc;

  @nullable
  @BuiltValueField(wireName: r'executionCompanyId')
  String get executionCompanyId;

  @nullable
  @BuiltValueField(wireName: r'projectManagerId')
  String get projectManagerId;

  @nullable
  @BuiltValueField(wireName: r'startDate')
  DateTime get startDate;

  @nullable
  @BuiltValueField(wireName: r'expectedDuration')
  int get expectedDuration;

  @nullable
  @BuiltValueField(wireName: r'expectedCostInPounds')
  double get expectedCostInPounds;

  @nullable
  @BuiltValueField(wireName: r'consultingCenterRole')
  ConsultingCenterRoleEnum get consultingCenterRole;
  // enum consultingCenterRoleEnum {  S,  D,  SD,  C,  };

  @nullable
  @BuiltValueField(wireName: r'initialWarranty')
  StartDurationDto get initialWarranty;

  @nullable
  @BuiltValueField(wireName: r'finalWarranty')
  StartDurationDto get finalWarranty;

  @nullable
  @BuiltValueField(wireName: r'actualEnd')
  DateTime get actualEnd;

  @nullable
  @BuiltValueField(wireName: r'requesterEmail')
  String get requesterEmail;

  @nullable
  @BuiltValueField(wireName: r'requesterLandline')
  String get requesterLandline;

  @nullable
  @BuiltValueField(wireName: r'requesterName')
  String get requesterName;

  @nullable
  @BuiltValueField(wireName: r'requesterPhone')
  String get requesterPhone;

  @nullable
  @BuiltValueField(wireName: r'requesterRelationToOwnerCompany')
  CompanyUserRelationTypesEnum get requesterRelationToOwnerCompany;
  // enum requesterRelationToOwnerCompanyEnum {  Manager,  Representative,  Other,  };

  @nullable
  @BuiltValueField(wireName: r'requesterRelationToOwnerCompanyDesc')
  String get requesterRelationToOwnerCompanyDesc;

  // Boilerplate code needed to wire-up generated code
  ReqEditProjectInfo._();

  static void _initializeBuilder(ReqEditProjectInfoBuilder b) => b;

  factory ReqEditProjectInfo([void updates(ReqEditProjectInfoBuilder b)]) =
      _$ReqEditProjectInfo;
  static Serializer<ReqEditProjectInfo> get serializer =>
      _$reqEditProjectInfoSerializer;
}
