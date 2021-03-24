// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'technical_report_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TechnicalReportVM> _$technicalReportVMSerializer =
    new _$TechnicalReportVMSerializer();

class _$TechnicalReportVMSerializer
    implements StructuredSerializer<TechnicalReportVM> {
  @override
  final Iterable<Type> types = const [TechnicalReportVM, _$TechnicalReportVM];
  @override
  final String wireName = 'TechnicalReportVM';

  @override
  Iterable<Object> serialize(Serializers serializers, TechnicalReportVM object,
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
    value = object.issuer;
    if (value != null) {
      result
        ..add('issuer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserViewModel)));
    }
    value = object.files;
    if (value != null) {
      result
        ..add('files')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AppFileViewModel)])));
    }
    return result;
  }

  @override
  TechnicalReportVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TechnicalReportVMBuilder();

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
        case 'issuer':
          result.issuer.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserViewModel)) as UserViewModel);
          break;
        case 'files':
          result.files.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AppFileViewModel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TechnicalReportVM extends TechnicalReportVM {
  @override
  final String reportId;
  @override
  final DateTime issuedAt;
  @override
  final DateTime date;
  @override
  final String title;
  @override
  final String desc;
  @override
  final UserViewModel issuer;
  @override
  final BuiltList<AppFileViewModel> files;

  factory _$TechnicalReportVM(
          [void Function(TechnicalReportVMBuilder) updates]) =>
      (new TechnicalReportVMBuilder()..update(updates)).build();

  _$TechnicalReportVM._(
      {this.reportId,
      this.issuedAt,
      this.date,
      this.title,
      this.desc,
      this.issuer,
      this.files})
      : super._();

  @override
  TechnicalReportVM rebuild(void Function(TechnicalReportVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TechnicalReportVMBuilder toBuilder() =>
      new TechnicalReportVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TechnicalReportVM &&
        reportId == other.reportId &&
        issuedAt == other.issuedAt &&
        date == other.date &&
        title == other.title &&
        desc == other.desc &&
        issuer == other.issuer &&
        files == other.files;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, reportId.hashCode), issuedAt.hashCode),
                        date.hashCode),
                    title.hashCode),
                desc.hashCode),
            issuer.hashCode),
        files.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TechnicalReportVM')
          ..add('reportId', reportId)
          ..add('issuedAt', issuedAt)
          ..add('date', date)
          ..add('title', title)
          ..add('desc', desc)
          ..add('issuer', issuer)
          ..add('files', files))
        .toString();
  }
}

class TechnicalReportVMBuilder
    implements Builder<TechnicalReportVM, TechnicalReportVMBuilder> {
  _$TechnicalReportVM _$v;

  String _reportId;
  String get reportId => _$this._reportId;
  set reportId(String reportId) => _$this._reportId = reportId;

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

  UserViewModelBuilder _issuer;
  UserViewModelBuilder get issuer =>
      _$this._issuer ??= new UserViewModelBuilder();
  set issuer(UserViewModelBuilder issuer) => _$this._issuer = issuer;

  ListBuilder<AppFileViewModel> _files;
  ListBuilder<AppFileViewModel> get files =>
      _$this._files ??= new ListBuilder<AppFileViewModel>();
  set files(ListBuilder<AppFileViewModel> files) => _$this._files = files;

  TechnicalReportVMBuilder() {
    TechnicalReportVM._initializeBuilder(this);
  }

  TechnicalReportVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reportId = $v.reportId;
      _issuedAt = $v.issuedAt;
      _date = $v.date;
      _title = $v.title;
      _desc = $v.desc;
      _issuer = $v.issuer?.toBuilder();
      _files = $v.files?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TechnicalReportVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TechnicalReportVM;
  }

  @override
  void update(void Function(TechnicalReportVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TechnicalReportVM build() {
    _$TechnicalReportVM _$result;
    try {
      _$result = _$v ??
          new _$TechnicalReportVM._(
              reportId: reportId,
              issuedAt: issuedAt,
              date: date,
              title: title,
              desc: desc,
              issuer: _issuer?.build(),
              files: _files?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'issuer';
        _issuer?.build();
        _$failedField = 'files';
        _files?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TechnicalReportVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
