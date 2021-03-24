//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'execution_company_view_model.g.dart';

abstract class ExecutionCompanyViewModel
    implements
        Built<ExecutionCompanyViewModel, ExecutionCompanyViewModelBuilder> {
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
  @BuiltValueField(wireName: r'companyRegister')
  String get companyRegister;

  @nullable
  @BuiltValueField(wireName: r'engLayer')
  String get engLayer;

  // Boilerplate code needed to wire-up generated code
  ExecutionCompanyViewModel._();

  static void _initializeBuilder(ExecutionCompanyViewModelBuilder b) => b;

  factory ExecutionCompanyViewModel(
          [void updates(ExecutionCompanyViewModelBuilder b)]) =
      _$ExecutionCompanyViewModel;
  static Serializer<ExecutionCompanyViewModel> get serializer =>
      _$executionCompanyViewModelSerializer;
}
