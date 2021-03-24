// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'comment_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommentVM> _$commentVMSerializer = new _$CommentVMSerializer();

class _$CommentVMSerializer implements StructuredSerializer<CommentVM> {
  @override
  final Iterable<Type> types = const [CommentVM, _$CommentVM];
  @override
  final String wireName = 'CommentVM';

  @override
  Iterable<Object> serialize(Serializers serializers, CommentVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
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
    value = object.commenter;
    if (value != null) {
      result
        ..add('commenter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserViewModel)));
    }
    value = object.selfOrOther;
    if (value != null) {
      result
        ..add('selfOrOther')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SelfOrOtherEnum)));
    }
    return result;
  }

  @override
  CommentVM deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issuedAt':
          result.issuedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'commenter':
          result.commenter.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserViewModel)) as UserViewModel);
          break;
        case 'selfOrOther':
          result.selfOrOther = serializers.deserialize(value,
                  specifiedType: const FullType(SelfOrOtherEnum))
              as SelfOrOtherEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$CommentVM extends CommentVM {
  @override
  final String comment;
  @override
  final DateTime issuedAt;
  @override
  final UserViewModel commenter;
  @override
  final SelfOrOtherEnum selfOrOther;

  factory _$CommentVM([void Function(CommentVMBuilder) updates]) =>
      (new CommentVMBuilder()..update(updates)).build();

  _$CommentVM._({this.comment, this.issuedAt, this.commenter, this.selfOrOther})
      : super._();

  @override
  CommentVM rebuild(void Function(CommentVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentVMBuilder toBuilder() => new CommentVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentVM &&
        comment == other.comment &&
        issuedAt == other.issuedAt &&
        commenter == other.commenter &&
        selfOrOther == other.selfOrOther;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, comment.hashCode), issuedAt.hashCode),
            commenter.hashCode),
        selfOrOther.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommentVM')
          ..add('comment', comment)
          ..add('issuedAt', issuedAt)
          ..add('commenter', commenter)
          ..add('selfOrOther', selfOrOther))
        .toString();
  }
}

class CommentVMBuilder implements Builder<CommentVM, CommentVMBuilder> {
  _$CommentVM _$v;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  DateTime _issuedAt;
  DateTime get issuedAt => _$this._issuedAt;
  set issuedAt(DateTime issuedAt) => _$this._issuedAt = issuedAt;

  UserViewModelBuilder _commenter;
  UserViewModelBuilder get commenter =>
      _$this._commenter ??= new UserViewModelBuilder();
  set commenter(UserViewModelBuilder commenter) =>
      _$this._commenter = commenter;

  SelfOrOtherEnum _selfOrOther;
  SelfOrOtherEnum get selfOrOther => _$this._selfOrOther;
  set selfOrOther(SelfOrOtherEnum selfOrOther) =>
      _$this._selfOrOther = selfOrOther;

  CommentVMBuilder() {
    CommentVM._initializeBuilder(this);
  }

  CommentVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comment = $v.comment;
      _issuedAt = $v.issuedAt;
      _commenter = $v.commenter?.toBuilder();
      _selfOrOther = $v.selfOrOther;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommentVM;
  }

  @override
  void update(void Function(CommentVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentVM build() {
    _$CommentVM _$result;
    try {
      _$result = _$v ??
          new _$CommentVM._(
              comment: comment,
              issuedAt: issuedAt,
              commenter: _commenter?.build(),
              selfOrOther: selfOrOther);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'commenter';
        _commenter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommentVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
