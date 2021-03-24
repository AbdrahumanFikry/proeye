//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'govs_cities_view_model_gov.g.dart';

abstract class GovsCitiesViewModelGov
    implements Built<GovsCitiesViewModelGov, GovsCitiesViewModelGovBuilder> {
  @nullable
  @BuiltValueField(wireName: r'govId')
  int get govId;

  @nullable
  @BuiltValueField(wireName: r'govNameAr')
  String get govNameAr;

  @nullable
  @BuiltValueField(wireName: r'govNameEn')
  String get govNameEn;

  // Boilerplate code needed to wire-up generated code
  GovsCitiesViewModelGov._();

  static void _initializeBuilder(GovsCitiesViewModelGovBuilder b) => b;

  factory GovsCitiesViewModelGov(
          [void updates(GovsCitiesViewModelGovBuilder b)]) =
      _$GovsCitiesViewModelGov;
  static Serializer<GovsCitiesViewModelGov> get serializer =>
      _$govsCitiesViewModelGovSerializer;
}
