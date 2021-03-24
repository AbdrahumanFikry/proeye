// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'center_main_work_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CenterMainWorkVM> _$centerMainWorkVMSerializer =
    new _$CenterMainWorkVMSerializer();

class _$CenterMainWorkVMSerializer
    implements StructuredSerializer<CenterMainWorkVM> {
  @override
  final Iterable<Type> types = const [CenterMainWorkVM, _$CenterMainWorkVM];
  @override
  final String wireName = 'CenterMainWorkVM';

  @override
  Iterable<Object> serialize(Serializers serializers, CenterMainWorkVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iconUrl;
    if (value != null) {
      result
        ..add('iconUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CenterMainWorkVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CenterMainWorkVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iconUrl':
          result.iconUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CenterMainWorkVM extends CenterMainWorkVM {
  @override
  final String title;
  @override
  final String iconUrl;

  factory _$CenterMainWorkVM(
          [void Function(CenterMainWorkVMBuilder) updates]) =>
      (new CenterMainWorkVMBuilder()..update(updates)).build();

  _$CenterMainWorkVM._({this.title, this.iconUrl}) : super._();

  @override
  CenterMainWorkVM rebuild(void Function(CenterMainWorkVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CenterMainWorkVMBuilder toBuilder() =>
      new CenterMainWorkVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CenterMainWorkVM &&
        title == other.title &&
        iconUrl == other.iconUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, title.hashCode), iconUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CenterMainWorkVM')
          ..add('title', title)
          ..add('iconUrl', iconUrl))
        .toString();
  }
}

class CenterMainWorkVMBuilder
    implements Builder<CenterMainWorkVM, CenterMainWorkVMBuilder> {
  _$CenterMainWorkVM _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _iconUrl;
  String get iconUrl => _$this._iconUrl;
  set iconUrl(String iconUrl) => _$this._iconUrl = iconUrl;

  CenterMainWorkVMBuilder() {
    CenterMainWorkVM._initializeBuilder(this);
  }

  CenterMainWorkVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _iconUrl = $v.iconUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CenterMainWorkVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CenterMainWorkVM;
  }

  @override
  void update(void Function(CenterMainWorkVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CenterMainWorkVM build() {
    final _$result =
        _$v ?? new _$CenterMainWorkVM._(title: title, iconUrl: iconUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
