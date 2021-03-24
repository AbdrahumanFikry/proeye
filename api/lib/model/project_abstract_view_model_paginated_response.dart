//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/project_abstract_view_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_abstract_view_model_paginated_response.g.dart';

abstract class ProjectAbstractViewModelPaginatedResponse
    implements
        Built<ProjectAbstractViewModelPaginatedResponse,
            ProjectAbstractViewModelPaginatedResponseBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pageIndex')
  int get pageIndex;

  @nullable
  @BuiltValueField(wireName: r'page')
  BuiltList<ProjectAbstractViewModel> get page;

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
  ProjectAbstractViewModelPaginatedResponse._();

  static void _initializeBuilder(
          ProjectAbstractViewModelPaginatedResponseBuilder b) =>
      b;

  factory ProjectAbstractViewModelPaginatedResponse(
          [void updates(ProjectAbstractViewModelPaginatedResponseBuilder b)]) =
      _$ProjectAbstractViewModelPaginatedResponse;
  static Serializer<ProjectAbstractViewModelPaginatedResponse> get serializer =>
      _$projectAbstractViewModelPaginatedResponseSerializer;
}
