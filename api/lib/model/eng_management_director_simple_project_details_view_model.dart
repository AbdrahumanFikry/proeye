//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/app_file_view_model.dart';
import 'package:proeye_api/model/govs_cities_view_model_gov.dart';
import 'package:proeye_api/model/project_requester_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/gov_company_view_model.dart';
import 'package:proeye_api/model/govs_cities_view_model_city.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'eng_management_director_simple_project_details_view_model.g.dart';

abstract class EngManagementDirectorSimpleProjectDetailsViewModel
    implements
        Built<EngManagementDirectorSimpleProjectDetailsViewModel,
            EngManagementDirectorSimpleProjectDetailsViewModelBuilder> {
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

  // Boilerplate code needed to wire-up generated code
  EngManagementDirectorSimpleProjectDetailsViewModel._();

  static void _initializeBuilder(
          EngManagementDirectorSimpleProjectDetailsViewModelBuilder b) =>
      b;

  factory EngManagementDirectorSimpleProjectDetailsViewModel(
          [void updates(
              EngManagementDirectorSimpleProjectDetailsViewModelBuilder b)]) =
      _$EngManagementDirectorSimpleProjectDetailsViewModel;
  static Serializer<EngManagementDirectorSimpleProjectDetailsViewModel>
      get serializer =>
          _$engManagementDirectorSimpleProjectDetailsViewModelSerializer;
}
