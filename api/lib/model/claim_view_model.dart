//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'claim_view_model.g.dart';

abstract class ClaimViewModel
    implements Built<ClaimViewModel, ClaimViewModelBuilder> {
  @nullable
  @BuiltValueField(wireName: r'type')
  String get type;

  @nullable
  @BuiltValueField(wireName: r'issuer')
  String get issuer;

  @nullable
  @BuiltValueField(wireName: r'originalIssuer')
  String get originalIssuer;

  @nullable
  @BuiltValueField(wireName: r'valueType')
  String get valueType;

  @nullable
  @BuiltValueField(wireName: r'value')
  String get value;

  // Boilerplate code needed to wire-up generated code
  ClaimViewModel._();

  static void _initializeBuilder(ClaimViewModelBuilder b) => b;

  factory ClaimViewModel([void updates(ClaimViewModelBuilder b)]) =
      _$ClaimViewModel;
  static Serializer<ClaimViewModel> get serializer =>
      _$claimViewModelSerializer;
}
