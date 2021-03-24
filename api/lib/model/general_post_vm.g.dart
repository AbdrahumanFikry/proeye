// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'general_post_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GeneralPostVM> _$generalPostVMSerializer =
    new _$GeneralPostVMSerializer();

class _$GeneralPostVMSerializer implements StructuredSerializer<GeneralPostVM> {
  @override
  final Iterable<Type> types = const [GeneralPostVM, _$GeneralPostVM];
  @override
  final String wireName = 'GeneralPostVM';

  @override
  Iterable<Object> serialize(Serializers serializers, GeneralPostVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.postId;
    if (value != null) {
      result
        ..add('postId')
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
    value = object.desc;
    if (value != null) {
      result
        ..add('desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullImageUrls;
    if (value != null) {
      result
        ..add('fullImageUrls')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  GeneralPostVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeneralPostVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'postId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fullImageUrls':
          result.fullImageUrls.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GeneralPostVM extends GeneralPostVM {
  @override
  final String postId;
  @override
  final String title;
  @override
  final String desc;
  @override
  final BuiltList<String> fullImageUrls;

  factory _$GeneralPostVM([void Function(GeneralPostVMBuilder) updates]) =>
      (new GeneralPostVMBuilder()..update(updates)).build();

  _$GeneralPostVM._({this.postId, this.title, this.desc, this.fullImageUrls})
      : super._();

  @override
  GeneralPostVM rebuild(void Function(GeneralPostVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeneralPostVMBuilder toBuilder() => new GeneralPostVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeneralPostVM &&
        postId == other.postId &&
        title == other.title &&
        desc == other.desc &&
        fullImageUrls == other.fullImageUrls;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, postId.hashCode), title.hashCode), desc.hashCode),
        fullImageUrls.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GeneralPostVM')
          ..add('postId', postId)
          ..add('title', title)
          ..add('desc', desc)
          ..add('fullImageUrls', fullImageUrls))
        .toString();
  }
}

class GeneralPostVMBuilder
    implements Builder<GeneralPostVM, GeneralPostVMBuilder> {
  _$GeneralPostVM _$v;

  String _postId;
  String get postId => _$this._postId;
  set postId(String postId) => _$this._postId = postId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _desc;
  String get desc => _$this._desc;
  set desc(String desc) => _$this._desc = desc;

  ListBuilder<String> _fullImageUrls;
  ListBuilder<String> get fullImageUrls =>
      _$this._fullImageUrls ??= new ListBuilder<String>();
  set fullImageUrls(ListBuilder<String> fullImageUrls) =>
      _$this._fullImageUrls = fullImageUrls;

  GeneralPostVMBuilder() {
    GeneralPostVM._initializeBuilder(this);
  }

  GeneralPostVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _title = $v.title;
      _desc = $v.desc;
      _fullImageUrls = $v.fullImageUrls?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeneralPostVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GeneralPostVM;
  }

  @override
  void update(void Function(GeneralPostVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GeneralPostVM build() {
    _$GeneralPostVM _$result;
    try {
      _$result = _$v ??
          new _$GeneralPostVM._(
              postId: postId,
              title: title,
              desc: desc,
              fullImageUrls: _fullImageUrls?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'fullImageUrls';
        _fullImageUrls?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GeneralPostVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
