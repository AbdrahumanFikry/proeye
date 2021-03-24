//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/company_section.dart';
import 'package:proeye_api/model/company_activity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gov_company_view_model.g.dart';

abstract class GovCompanyViewModel
    implements Built<GovCompanyViewModel, GovCompanyViewModelBuilder> {
  @nullable
  @BuiltValueField(wireName: r'companyId')
  String get companyId;

  @nullable
  @BuiltValueField(wireName: r'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: r'address')
  String get address;

  @nullable
  @BuiltValueField(wireName: r'phone1')
  String get phone1;

  @nullable
  @BuiltValueField(wireName: r'phone2')
  String get phone2;

  @nullable
  @BuiltValueField(wireName: r'fax')
  String get fax;

  @nullable
  @BuiltValueField(wireName: r'notes')
  String get notes;

  @nullable
  @BuiltValueField(wireName: r'email')
  String get email;

  @nullable
  @BuiltValueField(wireName: r'isVerified')
  bool get isVerified;

  @nullable
  @BuiltValueField(wireName: r'isInMansouraUniversity')
  bool get isInMansouraUniversity;

  @nullable
  @BuiltValueField(wireName: r'activity')
  CompanyActivity get activity;

  @nullable
  @BuiltValueField(wireName: r'section')
  CompanySection get section;

  // Boilerplate code needed to wire-up generated code
  GovCompanyViewModel._();

  static void _initializeBuilder(GovCompanyViewModelBuilder b) => b;

  factory GovCompanyViewModel([void updates(GovCompanyViewModelBuilder b)]) =
      _$GovCompanyViewModel;
  static Serializer<GovCompanyViewModel> get serializer =>
      _$govCompanyViewModelSerializer;
}
