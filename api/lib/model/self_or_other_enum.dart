//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'self_or_other_enum.g.dart';

class SelfOrOtherEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Self')
  static const SelfOrOtherEnum self = _$self;
  @BuiltValueEnumConst(wireName: r'Other')
  static const SelfOrOtherEnum other = _$other;

  static Serializer<SelfOrOtherEnum> get serializer =>
      _$selfOrOtherEnumSerializer;

  const SelfOrOtherEnum._(String name) : super(name);

  static BuiltSet<SelfOrOtherEnum> get values => _$values;
  static SelfOrOtherEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SelfOrOtherEnumMixin = Object with _$SelfOrOtherEnumMixin;
