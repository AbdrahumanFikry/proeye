//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'technical_report_abstract_vm.g.dart';

abstract class TechnicalReportAbstractVM
    implements
        Built<TechnicalReportAbstractVM, TechnicalReportAbstractVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'reportId')
  String get reportId;

  @nullable
  @BuiltValueField(wireName: r'issuerId')
  String get issuerId;

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

  // Boilerplate code needed to wire-up generated code
  TechnicalReportAbstractVM._();

  static void _initializeBuilder(TechnicalReportAbstractVMBuilder b) => b;

  factory TechnicalReportAbstractVM(
          [void updates(TechnicalReportAbstractVMBuilder b)]) =
      _$TechnicalReportAbstractVM;
  static Serializer<TechnicalReportAbstractVM> get serializer =>
      _$technicalReportAbstractVMSerializer;
}
