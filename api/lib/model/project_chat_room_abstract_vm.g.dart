// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'project_chat_room_abstract_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectChatRoomAbstractVM> _$projectChatRoomAbstractVMSerializer =
    new _$ProjectChatRoomAbstractVMSerializer();

class _$ProjectChatRoomAbstractVMSerializer
    implements StructuredSerializer<ProjectChatRoomAbstractVM> {
  @override
  final Iterable<Type> types = const [
    ProjectChatRoomAbstractVM,
    _$ProjectChatRoomAbstractVM
  ];
  @override
  final String wireName = 'ProjectChatRoomAbstractVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProjectChatRoomAbstractVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.roomName;
    if (value != null) {
      result
        ..add('roomName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isPublic;
    if (value != null) {
      result
        ..add('isPublic')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.roomId;
    if (value != null) {
      result
        ..add('roomId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photoUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProjectChatRoomAbstractVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectChatRoomAbstractVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'roomName':
          result.roomName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isPublic':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'roomId':
          result.roomId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectChatRoomAbstractVM extends ProjectChatRoomAbstractVM {
  @override
  final String roomName;
  @override
  final bool isPublic;
  @override
  final String roomId;
  @override
  final String photoUrl;

  factory _$ProjectChatRoomAbstractVM(
          [void Function(ProjectChatRoomAbstractVMBuilder) updates]) =>
      (new ProjectChatRoomAbstractVMBuilder()..update(updates)).build();

  _$ProjectChatRoomAbstractVM._(
      {this.roomName, this.isPublic, this.roomId, this.photoUrl})
      : super._();

  @override
  ProjectChatRoomAbstractVM rebuild(
          void Function(ProjectChatRoomAbstractVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectChatRoomAbstractVMBuilder toBuilder() =>
      new ProjectChatRoomAbstractVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectChatRoomAbstractVM &&
        roomName == other.roomName &&
        isPublic == other.isPublic &&
        roomId == other.roomId &&
        photoUrl == other.photoUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, roomName.hashCode), isPublic.hashCode), roomId.hashCode),
        photoUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectChatRoomAbstractVM')
          ..add('roomName', roomName)
          ..add('isPublic', isPublic)
          ..add('roomId', roomId)
          ..add('photoUrl', photoUrl))
        .toString();
  }
}

class ProjectChatRoomAbstractVMBuilder
    implements
        Builder<ProjectChatRoomAbstractVM, ProjectChatRoomAbstractVMBuilder> {
  _$ProjectChatRoomAbstractVM _$v;

  String _roomName;
  String get roomName => _$this._roomName;
  set roomName(String roomName) => _$this._roomName = roomName;

  bool _isPublic;
  bool get isPublic => _$this._isPublic;
  set isPublic(bool isPublic) => _$this._isPublic = isPublic;

  String _roomId;
  String get roomId => _$this._roomId;
  set roomId(String roomId) => _$this._roomId = roomId;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  ProjectChatRoomAbstractVMBuilder() {
    ProjectChatRoomAbstractVM._initializeBuilder(this);
  }

  ProjectChatRoomAbstractVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roomName = $v.roomName;
      _isPublic = $v.isPublic;
      _roomId = $v.roomId;
      _photoUrl = $v.photoUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectChatRoomAbstractVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectChatRoomAbstractVM;
  }

  @override
  void update(void Function(ProjectChatRoomAbstractVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectChatRoomAbstractVM build() {
    final _$result = _$v ??
        new _$ProjectChatRoomAbstractVM._(
            roomName: roomName,
            isPublic: isPublic,
            roomId: roomId,
            photoUrl: photoUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
