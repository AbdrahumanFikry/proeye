// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'detailed_general_section_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DetailedGeneralSectionVM> _$detailedGeneralSectionVMSerializer =
    new _$DetailedGeneralSectionVMSerializer();

class _$DetailedGeneralSectionVMSerializer
    implements StructuredSerializer<DetailedGeneralSectionVM> {
  @override
  final Iterable<Type> types = const [
    DetailedGeneralSectionVM,
    _$DetailedGeneralSectionVM
  ];
  @override
  final String wireName = 'DetailedGeneralSectionVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DetailedGeneralSectionVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.sectionId;
    if (value != null) {
      result
        ..add('sectionId')
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
    value = object.posts;
    if (value != null) {
      result
        ..add('posts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GeneralPostVM)])));
    }
    return result;
  }

  @override
  DetailedGeneralSectionVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DetailedGeneralSectionVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'sectionId':
          result.sectionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GeneralPostVM)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$DetailedGeneralSectionVM extends DetailedGeneralSectionVM {
  @override
  final String sectionId;
  @override
  final String title;
  @override
  final BuiltList<GeneralPostVM> posts;

  factory _$DetailedGeneralSectionVM(
          [void Function(DetailedGeneralSectionVMBuilder) updates]) =>
      (new DetailedGeneralSectionVMBuilder()..update(updates)).build();

  _$DetailedGeneralSectionVM._({this.sectionId, this.title, this.posts})
      : super._();

  @override
  DetailedGeneralSectionVM rebuild(
          void Function(DetailedGeneralSectionVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailedGeneralSectionVMBuilder toBuilder() =>
      new DetailedGeneralSectionVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailedGeneralSectionVM &&
        sectionId == other.sectionId &&
        title == other.title &&
        posts == other.posts;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, sectionId.hashCode), title.hashCode), posts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DetailedGeneralSectionVM')
          ..add('sectionId', sectionId)
          ..add('title', title)
          ..add('posts', posts))
        .toString();
  }
}

class DetailedGeneralSectionVMBuilder
    implements
        Builder<DetailedGeneralSectionVM, DetailedGeneralSectionVMBuilder> {
  _$DetailedGeneralSectionVM _$v;

  String _sectionId;
  String get sectionId => _$this._sectionId;
  set sectionId(String sectionId) => _$this._sectionId = sectionId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  ListBuilder<GeneralPostVM> _posts;
  ListBuilder<GeneralPostVM> get posts =>
      _$this._posts ??= new ListBuilder<GeneralPostVM>();
  set posts(ListBuilder<GeneralPostVM> posts) => _$this._posts = posts;

  DetailedGeneralSectionVMBuilder() {
    DetailedGeneralSectionVM._initializeBuilder(this);
  }

  DetailedGeneralSectionVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sectionId = $v.sectionId;
      _title = $v.title;
      _posts = $v.posts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailedGeneralSectionVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetailedGeneralSectionVM;
  }

  @override
  void update(void Function(DetailedGeneralSectionVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailedGeneralSectionVM build() {
    _$DetailedGeneralSectionVM _$result;
    try {
      _$result = _$v ??
          new _$DetailedGeneralSectionVM._(
              sectionId: sectionId, title: title, posts: _posts?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'posts';
        _posts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DetailedGeneralSectionVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
