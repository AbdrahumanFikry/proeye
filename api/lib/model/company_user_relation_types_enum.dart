//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'company_user_relation_types_enum.g.dart';

class CompanyUserRelationTypesEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Manager')
  static const CompanyUserRelationTypesEnum manager = _$manager;
  @BuiltValueEnumConst(wireName: r'Representative')
  static const CompanyUserRelationTypesEnum representative = _$representative;
  @BuiltValueEnumConst(wireName: r'Other')
  static const CompanyUserRelationTypesEnum other = _$other;

  static Serializer<CompanyUserRelationTypesEnum> get serializer =>
      _$companyUserRelationTypesEnumSerializer;

  const CompanyUserRelationTypesEnum._(String name) : super(name);

  static BuiltSet<CompanyUserRelationTypesEnum> get values => _$values;
  static CompanyUserRelationTypesEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CompanyUserRelationTypesEnumMixin = Object
    with _$CompanyUserRelationTypesEnumMixin;
