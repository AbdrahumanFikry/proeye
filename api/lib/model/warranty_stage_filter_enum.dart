//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'warranty_stage_filter_enum.g.dart';

class WarrantyStageFilterEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'InitialWarranty')
  static const WarrantyStageFilterEnum initialWarranty = _$initialWarranty;
  @BuiltValueEnumConst(wireName: r'FinalWarranty')
  static const WarrantyStageFilterEnum finalWarranty = _$finalWarranty;
  @BuiltValueEnumConst(wireName: r'AfterFinalWarranty')
  static const WarrantyStageFilterEnum afterFinalWarranty =
      _$afterFinalWarranty;

  static Serializer<WarrantyStageFilterEnum> get serializer =>
      _$warrantyStageFilterEnumSerializer;

  const WarrantyStageFilterEnum._(String name) : super(name);

  static BuiltSet<WarrantyStageFilterEnum> get values => _$values;
  static WarrantyStageFilterEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class WarrantyStageFilterEnumMixin = Object
    with _$WarrantyStageFilterEnumMixin;
