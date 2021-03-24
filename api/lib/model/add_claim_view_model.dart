//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_claim_view_model.g.dart';

abstract class AddClaimViewModel
    implements Built<AddClaimViewModel, AddClaimViewModelBuilder> {
  @nullable
  @BuiltValueField(wireName: r'type')
  String get type;

  @nullable
  @BuiltValueField(wireName: r'value')
  String get value;

  // Boilerplate code needed to wire-up generated code
  AddClaimViewModel._();

  static void _initializeBuilder(AddClaimViewModelBuilder b) => b;

  factory AddClaimViewModel([void updates(AddClaimViewModelBuilder b)]) =
      _$AddClaimViewModel;
  static Serializer<AddClaimViewModel> get serializer =>
      _$addClaimViewModelSerializer;
}
