// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'introduction_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IntroductionVM> _$introductionVMSerializer =
    new _$IntroductionVMSerializer();

class _$IntroductionVMSerializer
    implements StructuredSerializer<IntroductionVM> {
  @override
  final Iterable<Type> types = const [IntroductionVM, _$IntroductionVM];
  @override
  final String wireName = 'IntroductionVM';

  @override
  Iterable<Object> serialize(Serializers serializers, IntroductionVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.introduction;
    if (value != null) {
      result
        ..add('introduction')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  IntroductionVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IntroductionVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'introduction':
          result.introduction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$IntroductionVM extends IntroductionVM {
  @override
  final String introduction;
  @override
  final BuiltList<String> images;

  factory _$IntroductionVM([void Function(IntroductionVMBuilder) updates]) =>
      (new IntroductionVMBuilder()..update(updates)).build();

  _$IntroductionVM._({this.introduction, this.images}) : super._();

  @override
  IntroductionVM rebuild(void Function(IntroductionVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntroductionVMBuilder toBuilder() =>
      new IntroductionVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntroductionVM &&
        introduction == other.introduction &&
        images == other.images;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, introduction.hashCode), images.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IntroductionVM')
          ..add('introduction', introduction)
          ..add('images', images))
        .toString();
  }
}

class IntroductionVMBuilder
    implements Builder<IntroductionVM, IntroductionVMBuilder> {
  _$IntroductionVM _$v;

  String _introduction;
  String get introduction => _$this._introduction;
  set introduction(String introduction) => _$this._introduction = introduction;

  ListBuilder<String> _images;
  ListBuilder<String> get images =>
      _$this._images ??= new ListBuilder<String>();
  set images(ListBuilder<String> images) => _$this._images = images;

  IntroductionVMBuilder() {
    IntroductionVM._initializeBuilder(this);
  }

  IntroductionVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _introduction = $v.introduction;
      _images = $v.images?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntroductionVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IntroductionVM;
  }

  @override
  void update(void Function(IntroductionVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IntroductionVM build() {
    _$IntroductionVM _$result;
    try {
      _$result = _$v ??
          new _$IntroductionVM._(
              introduction: introduction, images: _images?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'IntroductionVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
