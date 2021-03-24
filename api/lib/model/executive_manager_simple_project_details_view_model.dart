//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/app_file_view_model.dart';
import 'package:proeye_api/model/govs_cities_view_model_gov.dart';
import 'package:proeye_api/model/project_requester_info.dart';
import 'package:proeye_api/model/execution_company_view_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/req_executive_manager_complete_project_request_view_model.dart';
import 'package:proeye_api/model/gov_company_view_model.dart';
import 'package:proeye_api/model/govs_cities_view_model_city.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'executive_manager_simple_project_details_view_model.g.dart';

abstract class ExecutiveManagerSimpleProjectDetailsViewModel
    implements
        Built<ExecutiveManagerSimpleProjectDetailsViewModel,
            ExecutiveManagerSimpleProjectDetailsViewModelBuilder> {
  @nullable
  @BuiltValueField(wireName: r'projectId')
  String get projectId;

  @nullable
  @BuiltValueField(wireName: r'projectName')
  String get projectName;

  @nullable
  @BuiltValueField(wireName: r'projectDesc')
  String get projectDesc;

  @nullable
  @BuiltValueField(wireName: r'notes')
  String get notes;

  @nullable
  @BuiltValueField(wireName: r'city')
  GovsCitiesViewModelCity get city;

  @nullable
  @BuiltValueField(wireName: r'governorate')
  GovsCitiesViewModelGov get governorate;

  @nullable
  @BuiltValueField(wireName: r'creationDate')
  DateTime get creationDate;

  @nullable
  @BuiltValueField(wireName: r'requesterInfo')
  ProjectRequesterInfo get requesterInfo;

  @nullable
  @BuiltValueField(wireName: r'ownerCompany')
  GovCompanyViewModel get ownerCompany;

  @nullable
  @BuiltValueField(wireName: r'files')
  BuiltList<AppFileViewModel> get files;

  @nullable
  @BuiltValueField(wireName: r'isDirectSelectOfExecuter')
  bool get isDirectSelectOfExecuter;

  @nullable
  @BuiltValueField(wireName: r'executerSelectionDesc')
  String get executerSelectionDesc;

  @nullable
  @BuiltValueField(wireName: r'projectExecuterCompany')
  ExecutionCompanyViewModel get projectExecuterCompany;

  @nullable
  @BuiltValueField(wireName: r'initialRequest')
  ReqExecutiveManagerCompleteProjectRequestViewModel get initialRequest;

  // Boilerplate code needed to wire-up generated code
  ExecutiveManagerSimpleProjectDetailsViewModel._();

  static void _initializeBuilder(
          ExecutiveManagerSimpleProjectDetailsViewModelBuilder b) =>
      b;

  factory ExecutiveManagerSimpleProjectDetailsViewModel(
          [void updates(
              ExecutiveManagerSimpleProjectDetailsViewModelBuilder b)]) =
      _$ExecutiveManagerSimpleProjectDetailsViewModel;
  static Serializer<ExecutiveManagerSimpleProjectDetailsViewModel>
      get serializer =>
          _$executiveManagerSimpleProjectDetailsViewModelSerializer;
}
