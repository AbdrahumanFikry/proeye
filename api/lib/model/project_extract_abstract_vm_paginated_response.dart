//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/project_extract_abstract_vm.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_extract_abstract_vm_paginated_response.g.dart';

abstract class ProjectExtractAbstractVMPaginatedResponse
    implements
        Built<ProjectExtractAbstractVMPaginatedResponse,
            ProjectExtractAbstractVMPaginatedResponseBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pageIndex')
  int get pageIndex;

  @nullable
  @BuiltValueField(wireName: r'page')
  BuiltList<ProjectExtractAbstractVM> get page;

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
  ProjectExtractAbstractVMPaginatedResponse._();

  static void _initializeBuilder(
          ProjectExtractAbstractVMPaginatedResponseBuilder b) =>
      b;

  factory ProjectExtractAbstractVMPaginatedResponse(
          [void updates(ProjectExtractAbstractVMPaginatedResponseBuilder b)]) =
      _$ProjectExtractAbstractVMPaginatedResponse;
  static Serializer<ProjectExtractAbstractVMPaginatedResponse> get serializer =>
      _$projectExtractAbstractVMPaginatedResponseSerializer;
}
