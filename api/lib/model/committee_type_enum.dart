//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'committee_type_enum.g.dart';

class CommitteeTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PlanningOrExecution')
  static const CommitteeTypeEnum planningOrExecution = _$planningOrExecution;
  @BuiltValueEnumConst(wireName: r'ReceiveInitial')
  static const CommitteeTypeEnum receiveInitial = _$receiveInitial;
  @BuiltValueEnumConst(wireName: r'ReceiveFinal')
  static const CommitteeTypeEnum receiveFinal = _$receiveFinal;

  static Serializer<CommitteeTypeEnum> get serializer =>
      _$committeeTypeEnumSerializer;

  const CommitteeTypeEnum._(String name) : super(name);

  static BuiltSet<CommitteeTypeEnum> get values => _$values;
  static CommitteeTypeEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CommitteeTypeEnumMixin = Object with _$CommitteeTypeEnumMixin;
