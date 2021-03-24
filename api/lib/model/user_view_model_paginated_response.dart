//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/user_view_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_view_model_paginated_response.g.dart';

abstract class UserViewModelPaginatedResponse
    implements
        Built<UserViewModelPaginatedResponse,
            UserViewModelPaginatedResponseBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pageIndex')
  int get pageIndex;

  @nullable
  @BuiltValueField(wireName: r'page')
  BuiltList<UserViewModel> get page;

  @nullable
  @BuiltValueField(wireName: r'pageSize')
  int get pageSize;

  @nullable
  @BuiltValueField(wireName: r'totalCount')
  int get totalCount;

  @nullable
  @BuiltValueField(wireName: r'totalPages')
  int get totalPages;

  @nullable
  @BuiltValueField(wireName: r'pageIndexZeroBased')
  int get pageIndexZeroBased;

  @nullable
  @BuiltValueField(wireName: r'hasPreviousPage')
  bool get hasPreviousPage;

  @nullable
  @BuiltValueField(wireName: r'hasNextPage')
  bool get hasNextPage;

  // Boilerplate code needed to wire-up generated code
  UserViewModelPaginatedResponse._();

  static void _initializeBuilder(UserViewModelPaginatedResponseBuilder b) => b;

  factory UserViewModelPaginatedResponse(
          [void updates(UserViewModelPaginatedResponseBuilder b)]) =
      _$UserViewModelPaginatedResponse;
  static Serializer<UserViewModelPaginatedResponse> get serializer =>
      _$userViewModelPaginatedResponseSerializer;
}
