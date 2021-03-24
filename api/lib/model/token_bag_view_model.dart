//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/user_view_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/claim_view_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_bag_view_model.g.dart';

abstract class TokenBagViewModel
    implements Built<TokenBagViewModel, TokenBagViewModelBuilder> {
  @nullable
  @BuiltValueField(wireName: r'refreshTokenExpiryTime')
  DateTime get refreshTokenExpiryTime;

  @nullable
  @BuiltValueField(wireName: r'accessToken')
  String get accessToken;

  @nullable
  @BuiltValueField(wireName: r'refreshToken')
  String get refreshToken;

  @nullable
  @BuiltValueField(wireName: r'expiration')
  DateTime get expiration;

  @nullable
  @BuiltValueField(wireName: r'user')
  UserViewModel get user;

  @nullable
  @BuiltValueField(wireName: r'claims')
  BuiltList<ClaimViewModel> get claims;

  // Boilerplate code needed to wire-up generated code
  TokenBagViewModel._();

  static void _initializeBuilder(TokenBagViewModelBuilder b) => b;

  factory TokenBagViewModel([void updates(TokenBagViewModelBuilder b)]) =
      _$TokenBagViewModel;
  static Serializer<TokenBagViewModel> get serializer =>
      _$tokenBagViewModelSerializer;
}
