//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/technical_report_abstract_vm.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'technical_report_abstract_vm_paginated_response.g.dart';

abstract class TechnicalReportAbstractVMPaginatedResponse
    implements
        Built<TechnicalReportAbstractVMPaginatedResponse,
            TechnicalReportAbstractVMPaginatedResponseBuilder> {
  @nullable
  @BuiltValueField(wireName: r'pageIndex')
  int get pageIndex;

  @nullable
  @BuiltValueField(wireName: r'page')
  BuiltList<TechnicalReportAbstractVM> get page;

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
  TechnicalReportAbstractVMPaginatedResponse._();

  static void _initializeBuilder(
          TechnicalReportAbstractVMPaginatedResponseBuilder b) =>
      b;

  factory TechnicalReportAbstractVMPaginatedResponse(
          [void updates(TechnicalReportAbstractVMPaginatedResponseBuilder b)]) =
      _$TechnicalReportAbstractVMPaginatedResponse;
  static Serializer<TechnicalReportAbstractVMPaginatedResponse>
      get serializer => _$technicalReportAbstractVMPaginatedResponseSerializer;
}
