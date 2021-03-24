//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'company_activity.g.dart';

abstract class CompanyActivity
    implements Built<CompanyActivity, CompanyActivityBuilder> {
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
  CompanyActivity._();

  static void _initializeBuilder(CompanyActivityBuilder b) => b;

  factory CompanyActivity([void updates(CompanyActivityBuilder b)]) =
      _$CompanyActivity;
  static Serializer<CompanyActivity> get serializer =>
      _$companyActivitySerializer;
}
