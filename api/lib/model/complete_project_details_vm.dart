//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/app_file_view_model.dart';
import 'package:proeye_api/model/project_requester_info.dart';
import 'package:proeye_api/model/user_view_model.dart';
import 'package:proeye_api/model/execution_company_view_model.dart';
import 'package:proeye_api/model/start_duration_dto.dart';
import 'package:proeye_api/model/project_abstract_committee_vm.dart';
import 'package:proeye_api/model/consulting_center_role_enum.dart';
import 'package:proeye_api/model/gov_company_view_model.dart';
import 'package:proeye_api/model/govs_cities_view_model_gov.dart';
import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/per_project_user_role_vm.dart';
import 'package:proeye_api/model/colored_danger_zone_vm.dart';
import 'package:proeye_api/model/govs_cities_view_model_city.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'complete_project_details_vm.g.dart';

abstract class CompleteProjectDetailsVM
    implements
        Built<CompleteProjectDetailsVM, CompleteProjectDetailsVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'isDone')
  bool get isDone;

  @nullable
  @BuiltValueField(wireName: r'isLate')
  bool get isLate;

  @nullable
  @BuiltValueField(wireName: r'plannedStart')
  DateTime get plannedStart;

  @nullable
  @BuiltValueField(wireName: r'plannedDurationDays')
  int get plannedDurationDays;

  @nullable
  @BuiltValueField(wireName: r'plannedEnd')
  DateTime get plannedEnd;

  @nullable
  @BuiltValueField(wireName: r'actualEnd')
  DateTime get actualEnd;

  @nullable
  @BuiltValueField(wireName: r'dangerPercent')
  double get dangerPercent;

  @nullable
  @BuiltValueField(wireName: r'isAcceptedByEngManagementDirector')
  bool get isAcceptedByEngManagementDirector;

  @nullable
  @BuiltValueField(wireName: r'engManagementDirectorRefuseReason')
  String get engManagementDirectorRefuseReason;

  @nullable
  @BuiltValueField(wireName: r'userRelations')
  BuiltList<PerProjectUserRoleVM> get userRelations;

  @nullable
  @BuiltValueField(wireName: r'projectManager')
  UserViewModel get projectManager;

  @nullable
  @BuiltValueField(wireName: r'ownerCompany')
  GovCompanyViewModel get ownerCompany;

  @nullable
  @BuiltValueField(wireName: r'consultingCenterRole')
  ConsultingCenterRoleEnum get consultingCenterRole;
  // enum consultingCenterRoleEnum {  S,  D,  SD,  C,  };

  @nullable
  @BuiltValueField(wireName: r'creationDate')
  DateTime get creationDate;

  @nullable
  @BuiltValueField(wireName: r'projectCode')
  String get projectCode;

  @nullable
  @BuiltValueField(wireName: r'governorate')
  GovsCitiesViewModelGov get governorate;

  @nullable
  @BuiltValueField(wireName: r'city')
  GovsCitiesViewModelCity get city;

  @nullable
  @BuiltValueField(wireName: r'operationNumber')
  int get operationNumber;

  @nullable
  @BuiltValueField(wireName: r'initialWarrantyDate')
  StartDurationDto get initialWarrantyDate;

  @nullable
  @BuiltValueField(wireName: r'finalWarrantyDate')
  StartDurationDto get finalWarrantyDate;

  @nullable
  @BuiltValueField(wireName: r'requesterInfo')
  ProjectRequesterInfo get requesterInfo;

  @nullable
  @BuiltValueField(wireName: r'isSupervisedByEngManagementDirector')
  bool get isSupervisedByEngManagementDirector;

  @nullable
  @BuiltValueField(wireName: r'isDirectSelectOfExecuter')
  bool get isDirectSelectOfExecuter;

  @nullable
  @BuiltValueField(wireName: r'projectExecuter')
  ExecutionCompanyViewModel get projectExecuter;

  @nullable
  @BuiltValueField(wireName: r'executerSelectionDesc')
  String get executerSelectionDesc;

  @nullable
  @BuiltValueField(wireName: r'currentCommitteeId')
  String get currentCommitteeId;

  @nullable
  @BuiltValueField(wireName: r'committees')
  BuiltList<ProjectAbstractCommitteeVM> get committees;

  @nullable
  @BuiltValueField(wireName: r'expectedCostInPounds')
  double get expectedCostInPounds;

  @nullable
  @BuiltValueField(wireName: r'filePool')
  BuiltList<AppFileViewModel> get filePool;

  @nullable
  @BuiltValueField(wireName: r'taskDangerZones')
  BuiltList<ColoredDangerZoneVM> get taskDangerZones;

  @nullable
  @BuiltValueField(wireName: r'completePercentage')
  double get completePercentage;

  // Boilerplate code needed to wire-up generated code
  CompleteProjectDetailsVM._();

  static void _initializeBuilder(CompleteProjectDetailsVMBuilder b) => b;

  factory CompleteProjectDetailsVM(
          [void updates(CompleteProjectDetailsVMBuilder b)]) =
      _$CompleteProjectDetailsVM;
  static Serializer<CompleteProjectDetailsVM> get serializer =>
      _$completeProjectDetailsVMSerializer;
}
