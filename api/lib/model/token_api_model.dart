//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_api_model.g.dart';

abstract class TokenApiModel
    implements Built<TokenApiModel, TokenApiModelBuilder> {
  @nullable
  @BuiltValueField(wireName: r'accessToken')
  String get accessToken;

  @nullable
  @BuiltValueField(wireName: r'refreshToken')
  String get refreshToken;

  // Boilerplate code needed to wire-up generated code
  TokenApiModel._();

  static void _initializeBuilder(TokenApiModelBuilder b) => b;

  factory TokenApiModel([void updates(TokenApiModelBuilder b)]) =
      _$TokenApiModel;
  static Serializer<TokenApiModel> get serializer => _$tokenApiModelSerializer;
}
