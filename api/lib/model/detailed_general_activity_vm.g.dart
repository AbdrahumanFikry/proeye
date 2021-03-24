// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'detailed_general_activity_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DetailedGeneralActivityVM> _$detailedGeneralActivityVMSerializer =
    new _$DetailedGeneralActivityVMSerializer();

class _$DetailedGeneralActivityVMSerializer
    implements StructuredSerializer<DetailedGeneralActivityVM> {
  @override
  final Iterable<Type> types = const [
    DetailedGeneralActivityVM,
    _$DetailedGeneralActivityVM
  ];
  @override
  final String wireName = 'DetailedGeneralActivityVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DetailedGeneralActivityVM object,
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
    value = object.subSections;
    if (value != null) {
      result
        ..add('subSections')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AbstractGeneralSectionVM)])));
    }
    return result;
  }

  @override
  DetailedGeneralActivityVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DetailedGeneralActivityVMBuilder();

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
        case 'subSections':
          result.subSections.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(AbstractGeneralSectionVM)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$DetailedGeneralActivityVM extends DetailedGeneralActivityVM {
  @override
  final String activityId;
  @override
  final String title;
  @override
  final String fullImageUrl;
  @override
  final BuiltList<AbstractGeneralSectionVM> subSections;

  factory _$DetailedGeneralActivityVM(
          [void Function(DetailedGeneralActivityVMBuilder) updates]) =>
      (new DetailedGeneralActivityVMBuilder()..update(updates)).build();

  _$DetailedGeneralActivityVM._(
      {this.activityId, this.title, this.fullImageUrl, this.subSections})
      : super._();

  @override
  DetailedGeneralActivityVM rebuild(
          void Function(DetailedGeneralActivityVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailedGeneralActivityVMBuilder toBuilder() =>
      new DetailedGeneralActivityVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailedGeneralActivityVM &&
        activityId == other.activityId &&
        title == other.title &&
        fullImageUrl == other.fullImageUrl &&
        subSections == other.subSections;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, activityId.hashCode), title.hashCode),
            fullImageUrl.hashCode),
        subSections.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DetailedGeneralActivityVM')
          ..add('activityId', activityId)
          ..add('title', title)
          ..add('fullImageUrl', fullImageUrl)
          ..add('subSections', subSections))
        .toString();
  }
}

class DetailedGeneralActivityVMBuilder
    implements
        Builder<DetailedGeneralActivityVM, DetailedGeneralActivityVMBuilder> {
  _$DetailedGeneralActivityVM _$v;

  String _activityId;
  String get activityId => _$this._activityId;
  set activityId(String activityId) => _$this._activityId = activityId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _fullImageUrl;
  String get fullImageUrl => _$this._fullImageUrl;
  set fullImageUrl(String fullImageUrl) => _$this._fullImageUrl = fullImageUrl;

  ListBuilder<AbstractGeneralSectionVM> _subSections;
  ListBuilder<AbstractGeneralSectionVM> get subSections =>
      _$this._subSections ??= new ListBuilder<AbstractGeneralSectionVM>();
  set subSections(ListBuilder<AbstractGeneralSectionVM> subSections) =>
      _$this._subSections = subSections;

  DetailedGeneralActivityVMBuilder() {
    DetailedGeneralActivityVM._initializeBuilder(this);
  }

  DetailedGeneralActivityVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activityId = $v.activityId;
      _title = $v.title;
      _fullImageUrl = $v.fullImageUrl;
      _subSections = $v.subSections?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailedGeneralActivityVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetailedGeneralActivityVM;
  }

  @override
  void update(void Function(DetailedGeneralActivityVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailedGeneralActivityVM build() {
    _$DetailedGeneralActivityVM _$result;
    try {
      _$result = _$v ??
          new _$DetailedGeneralActivityVM._(
              activityId: activityId,
              title: title,
              fullImageUrl: fullImageUrl,
              subSections: _subSections?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'subSections';
        _subSections?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DetailedGeneralActivityVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
