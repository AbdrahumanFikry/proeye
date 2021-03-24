//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'company_section.g.dart';

abstract class CompanySection
    implements Built<CompanySection, CompanySectionBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: r'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: r'isActive')
  bool get isActive;

  // Boilerplate code needed to wire-up generated code
  CompanySection._();

  static void _initializeBuilder(CompanySectionBuilder b) => b;

  factory CompanySection([void updates(CompanySectionBuilder b)]) =
      _$CompanySection;
  static Serializer<CompanySection> get serializer =>
      _$companySectionSerializer;
}
