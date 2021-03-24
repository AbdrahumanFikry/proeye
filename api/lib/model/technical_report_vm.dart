//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/app_file_view_model.dart';
import 'package:proeye_api/model/user_view_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'technical_report_vm.g.dart';

abstract class TechnicalReportVM
    implements Built<TechnicalReportVM, TechnicalReportVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'reportId')
  String get reportId;

  @nullable
  @BuiltValueField(wireName: r'issuedAt')
  DateTime get issuedAt;

  @nullable
  @BuiltValueField(wireName: r'date')
  DateTime get date;

  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: r'desc')
  String get desc;

  @nullable
  @BuiltValueField(wireName: r'issuer')
  UserViewModel get issuer;

  @nullable
  @BuiltValueField(wireName: r'files')
  BuiltList<AppFileViewModel> get files;

  // Boilerplate code needed to wire-up generated code
  TechnicalReportVM._();

  static void _initializeBuilder(TechnicalReportVMBuilder b) => b;

  factory TechnicalReportVM([void updates(TechnicalReportVMBuilder b)]) =
      _$TechnicalReportVM;
  static Serializer<TechnicalReportVM> get serializer =>
      _$technicalReportVMSerializer;
}
