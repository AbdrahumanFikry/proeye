//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/message_view_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_view_model_paginated_response.g.dart';

abstract class MessageViewModelPaginatedResponse
    implements
        Built<MessageViewModelPaginatedResponse,
            MessageViewModelPaginatedResponseBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pageIndex')
  int get pageIndex;

  @nullable
  @BuiltValueField(wireName: r'page')
  BuiltList<MessageViewModel> get page;

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
  MessageViewModelPaginatedResponse._();

  static void _initializeBuilder(MessageViewModelPaginatedResponseBuilder b) =>
      b;

  factory MessageViewModelPaginatedResponse(
          [void updates(MessageViewModelPaginatedResponseBuilder b)]) =
      _$MessageViewModelPaginatedResponse;
  static Serializer<MessageViewModelPaginatedResponse> get serializer =>
      _$messageViewModelPaginatedResponseSerializer;
}
