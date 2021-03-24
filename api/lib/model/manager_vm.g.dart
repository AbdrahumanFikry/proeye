// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'manager_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ManagerVM> _$managerVMSerializer = new _$ManagerVMSerializer();

class _$ManagerVMSerializer implements StructuredSerializer<ManagerVM> {
  @override
  final Iterable<Type> types = const [ManagerVM, _$ManagerVM];
  @override
  final String wireName = 'ManagerVM';

  @override
  Iterable<Object> serialize(Serializers serializers, ManagerVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.position;
    if (value != null) {
      result
        ..add('position')
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
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ManagerVM deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ManagerVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ManagerVM extends ManagerVM {
  @override
  final String position;
  @override
  final String title;
  @override
  final String name;
  @override
  final String email;
  @override
  final String imageUrl;

  factory _$ManagerVM([void Function(ManagerVMBuilder) updates]) =>
      (new ManagerVMBuilder()..update(updates)).build();

  _$ManagerVM._(
      {this.position, this.title, this.name, this.email, this.imageUrl})
      : super._();

  @override
  ManagerVM rebuild(void Function(ManagerVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ManagerVMBuilder toBuilder() => new ManagerVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ManagerVM &&
        position == other.position &&
        title == other.title &&
        name == other.name &&
        email == other.email &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, position.hashCode), title.hashCode), name.hashCode),
            email.hashCode),
        imageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ManagerVM')
          ..add('position', position)
          ..add('title', title)
          ..add('name', name)
          ..add('email', email)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class ManagerVMBuilder implements Builder<ManagerVM, ManagerVMBuilder> {
  _$ManagerVM _$v;

  String _position;
  String get position => _$this._position;
  set position(String position) => _$this._position = position;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  ManagerVMBuilder() {
    ManagerVM._initializeBuilder(this);
  }

  ManagerVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _position = $v.position;
      _title = $v.title;
      _name = $v.name;
      _email = $v.email;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ManagerVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ManagerVM;
  }

  @override
  void update(void Function(ManagerVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ManagerVM build() {
    final _$result = _$v ??
        new _$ManagerVM._(
            position: position,
            title: title,
            name: name,
            email: email,
            imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
