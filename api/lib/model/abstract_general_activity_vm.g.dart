// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'abstract_general_activity_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AbstractGeneralActivityVM> _$abstractGeneralActivityVMSerializer =
    new _$AbstractGeneralActivityVMSerializer();

class _$AbstractGeneralActivityVMSerializer
    implements StructuredSerializer<AbstractGeneralActivityVM> {
  @override
  final Iterable<Type> types = const [
    AbstractGeneralActivityVM,
    _$AbstractGeneralActivityVM
  ];
  @override
  final String wireName = 'AbstractGeneralActivityVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AbstractGeneralActivityVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.activityId;
    if (value != null) {
      result
        ..add('activityId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullImageUrl;
    if (value != null) {
      result
        ..add('fullImageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AbstractGeneralActivityVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AbstractGeneralActivityVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'activityId':
          result.activityId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fullImageUrl':
          result.fullImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AbstractGeneralActivityVM extends AbstractGeneralActivityVM {
  @override
  final String activityId;
  @override
  final String title;
  @override
  final String fullImageUrl;

  factory _$AbstractGeneralActivityVM(
          [void Function(AbstractGeneralActivityVMBuilder) updates]) =>
      (new AbstractGeneralActivityVMBuilder()..update(updates)).build();

  _$AbstractGeneralActivityVM._(
      {this.activityId, this.title, this.fullImageUrl})
      : super._();

  @override
  AbstractGeneralActivityVM rebuild(
          void Function(AbstractGeneralActivityVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AbstractGeneralActivityVMBuilder toBuilder() =>
      new AbstractGeneralActivityVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AbstractGeneralActivityVM &&
        activityId == other.activityId &&
        title == other.title &&
        fullImageUrl == other.fullImageUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, activityId.hashCode), title.hashCode),
        fullImageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AbstractGeneralActivityVM')
          ..add('activityId', activityId)
          ..add('title', title)
          ..add('fullImageUrl', fullImageUrl))
        .toString();
  }
}

class AbstractGeneralActivityVMBuilder
    implements
        Builder<AbstractGeneralActivityVM, AbstractGeneralActivityVMBuilder> {
  _$AbstractGeneralActivityVM _$v;

  String _activityId;
  String get activityId => _$this._activityId;
  set activityId(String activityId) => _$this._activityId = activityId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _fullImageUrl;
  String get fullImageUrl => _$this._fullImageUrl;
  set fullImageUrl(String fullImageUrl) => _$this._fullImageUrl = fullImageUrl;

  AbstractGeneralActivityVMBuilder() {
    AbstractGeneralActivityVM._initializeBuilder(this);
  }

  AbstractGeneralActivityVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activityId = $v.activityId;
      _title = $v.title;
      _fullImageUrl = $v.fullImageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AbstractGeneralActivityVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AbstractGeneralActivityVM;
  }

  @override
  void update(void Function(AbstractGeneralActivityVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AbstractGeneralActivityVM build() {
    final _$result = _$v ??
        new _$AbstractGeneralActivityVM._(
            activityId: activityId, title: title, fullImageUrl: fullImageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
