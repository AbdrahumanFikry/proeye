//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'govs_cities_view_model_city.g.dart';

abstract class GovsCitiesViewModelCity
    implements Built<GovsCitiesViewModelCity, GovsCitiesViewModelCityBuilder> {
  @nullable
  @BuiltValueField(wireName: r'govId')
  int get govId;

  @nullable
  @BuiltValueField(wireName: r'cityId')
  int get cityId;

  @nullable
  @BuiltValueField(wireName: r'cityNameAr')
  String get cityNameAr;

  @nullable
  @BuiltValueField(wireName: r'cityNameEn')
  String get cityNameEn;

  // Boilerplate code needed to wire-up generated code
  GovsCitiesViewModelCity._();

  static void _initializeBuilder(GovsCitiesViewModelCityBuilder b) => b;

  factory GovsCitiesViewModelCity(
          [void updates(GovsCitiesViewModelCityBuilder b)]) =
      _$GovsCitiesViewModelCity;
  static Serializer<GovsCitiesViewModelCity> get serializer =>
      _$govsCitiesViewModelCitySerializer;
}
