// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'technical_report_abstract_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TechnicalReportAbstractVM> _$technicalReportAbstractVMSerializer =
    new _$TechnicalReportAbstractVMSerializer();

class _$TechnicalReportAbstractVMSerializer
    implements StructuredSerializer<TechnicalReportAbstractVM> {
  @override
  final Iterable<Type> types = const [
    TechnicalReportAbstractVM,
    _$TechnicalReportAbstractVM
  ];
  @override
  final String wireName = 'TechnicalReportAbstractVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TechnicalReportAbstractVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.reportId;
    if (value != null) {
      result
        ..add('reportId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issuerId;
    if (value != null) {
      result
        ..add('issuerId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issuedAt;
    if (value != null) {
      result
        ..add('issuedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.desc;
    if (value != null) {
      result
        ..add('desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TechnicalReportAbstractVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TechnicalReportAbstractVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'reportId':
          result.reportId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issuerId':
          result.issuerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issuedAt':
          result.issuedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TechnicalReportAbstractVM extends TechnicalReportAbstractVM {
  @override
  final String reportId;
  @override
  final String issuerId;
  @override
  final DateTime issuedAt;
  @override
  final DateTime date;
  @override
  final String title;
  @override
  final String desc;

  factory _$TechnicalReportAbstractVM(
          [void Function(TechnicalReportAbstractVMBuilder) updates]) =>
      (new TechnicalReportAbstractVMBuilder()..update(updates)).build();

  _$TechnicalReportAbstractVM._(
      {this.reportId,
      this.issuerId,
      this.issuedAt,
      this.date,
      this.title,
      this.desc})
      : super._();

  @override
  TechnicalReportAbstractVM rebuild(
          void Function(TechnicalReportAbstractVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TechnicalReportAbstractVMBuilder toBuilder() =>
      new TechnicalReportAbstractVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TechnicalReportAbstractVM &&
        reportId == other.reportId &&
        issuerId == other.issuerId &&
        issuedAt == other.issuedAt &&
        date == other.date &&
        title == other.title &&
        desc == other.desc;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, reportId.hashCode), issuerId.hashCode),
                    issuedAt.hashCode),
                date.hashCode),
            title.hashCode),
        desc.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TechnicalReportAbstractVM')
          ..add('reportId', reportId)
          ..add('issuerId', issuerId)
          ..add('issuedAt', issuedAt)
          ..add('date', date)
          ..add('title', title)
          ..add('desc', desc))
        .toString();
  }
}

class TechnicalReportAbstractVMBuilder
    implements
        Builder<TechnicalReportAbstractVM, TechnicalReportAbstractVMBuilder> {
  _$TechnicalReportAbstractVM _$v;

  String _reportId;
  String get reportId => _$this._reportId;
  set reportId(String reportId) => _$this._reportId = reportId;

  String _issuerId;
  String get issuerId => _$this._issuerId;
  set issuerId(String issuerId) => _$this._issuerId = issuerId;

  DateTime _issuedAt;
  DateTime get issuedAt => _$this._issuedAt;
  set issuedAt(DateTime issuedAt) => _$this._issuedAt = issuedAt;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _desc;
  String get desc => _$this._desc;
  set desc(String desc) => _$this._desc = desc;

  TechnicalReportAbstractVMBuilder() {
    TechnicalReportAbstractVM._initializeBuilder(this);
  }

  TechnicalReportAbstractVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reportId = $v.reportId;
      _issuerId = $v.issuerId;
      _issuedAt = $v.issuedAt;
      _date = $v.date;
      _title = $v.title;
      _desc = $v.desc;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TechnicalReportAbstractVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TechnicalReportAbstractVM;
  }

  @override
  void update(void Function(TechnicalReportAbstractVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TechnicalReportAbstractVM build() {
    final _$result = _$v ??
        new _$TechnicalReportAbstractVM._(
            reportId: reportId,
            issuerId: issuerId,
            issuedAt: issuedAt,
            date: date,
            title: title,
            desc: desc);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
