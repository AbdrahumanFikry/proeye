// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'message_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MessageViewModel> _$messageViewModelSerializer =
    new _$MessageViewModelSerializer();

class _$MessageViewModelSerializer
    implements StructuredSerializer<MessageViewModel> {
  @override
  final Iterable<Type> types = const [MessageViewModel, _$MessageViewModel];
  @override
  final String wireName = 'MessageViewModel';

  @override
  Iterable<Object> serialize(Serializers serializers, MessageViewModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.messageId;
    if (value != null) {
      result
        ..add('messageId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issuedDate;
    if (value != null) {
      result
        ..add('issuedDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.issuerId;
    if (value != null) {
      result
        ..add('issuerId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issuerName;
    if (value != null) {
      result
        ..add('issuerName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.attachments;
    if (value != null) {
      result
        ..add('attachments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AppFileViewModel)])));
    }
    value = object.selfOrOther;
    if (value != null) {
      result
        ..add('selfOrOther')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SelfOrOtherEnum)));
    }
    value = object.isPinned;
    if (value != null) {
      result
        ..add('isPinned')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  MessageViewModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessageViewModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'messageId':
          result.messageId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issuedDate':
          result.issuedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'issuerId':
          result.issuerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issuerName':
          result.issuerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'attachments':
          result.attachments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AppFileViewModel)]))
              as BuiltList<Object>);
          break;
        case 'selfOrOther':
          result.selfOrOther = serializers.deserialize(value,
                  specifiedType: const FullType(SelfOrOtherEnum))
              as SelfOrOtherEnum;
          break;
        case 'isPinned':
          result.isPinned = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$MessageViewModel extends MessageViewModel {
  @override
  final String messageId;
  @override
  final DateTime issuedDate;
  @override
  final String issuerId;
  @override
  final String issuerName;
  @override
  final String content;
  @override
  final BuiltList<AppFileViewModel> attachments;
  @override
  final SelfOrOtherEnum selfOrOther;
  @override
  final bool isPinned;

  factory _$MessageViewModel(
          [void Function(MessageViewModelBuilder) updates]) =>
      (new MessageViewModelBuilder()..update(updates)).build();

  _$MessageViewModel._(
      {this.messageId,
      this.issuedDate,
      this.issuerId,
      this.issuerName,
      this.content,
      this.attachments,
      this.selfOrOther,
      this.isPinned})
      : super._();

  @override
  MessageViewModel rebuild(void Function(MessageViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessageViewModelBuilder toBuilder() =>
      new MessageViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessageViewModel &&
        messageId == other.messageId &&
        issuedDate == other.issuedDate &&
        issuerId == other.issuerId &&
        issuerName == other.issuerName &&
        content == other.content &&
        attachments == other.attachments &&
        selfOrOther == other.selfOrOther &&
        isPinned == other.isPinned;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, messageId.hashCode),
                                issuedDate.hashCode),
                            issuerId.hashCode),
                        issuerName.hashCode),
                    content.hashCode),
                attachments.hashCode),
            selfOrOther.hashCode),
        isPinned.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MessageViewModel')
          ..add('messageId', messageId)
          ..add('issuedDate', issuedDate)
          ..add('issuerId', issuerId)
          ..add('issuerName', issuerName)
          ..add('content', content)
          ..add('attachments', attachments)
          ..add('selfOrOther', selfOrOther)
          ..add('isPinned', isPinned))
        .toString();
  }
}

class MessageViewModelBuilder
    implements Builder<MessageViewModel, MessageViewModelBuilder> {
  _$MessageViewModel _$v;

  String _messageId;
  String get messageId => _$this._messageId;
  set messageId(String messageId) => _$this._messageId = messageId;

  DateTime _issuedDate;
  DateTime get issuedDate => _$this._issuedDate;
  set issuedDate(DateTime issuedDate) => _$this._issuedDate = issuedDate;

  String _issuerId;
  String get issuerId => _$this._issuerId;
  set issuerId(String issuerId) => _$this._issuerId = issuerId;

  String _issuerName;
  String get issuerName => _$this._issuerName;
  set issuerName(String issuerName) => _$this._issuerName = issuerName;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  ListBuilder<AppFileViewModel> _attachments;
  ListBuilder<AppFileViewModel> get attachments =>
      _$this._attachments ??= new ListBuilder<AppFileViewModel>();
  set attachments(ListBuilder<AppFileViewModel> attachments) =>
      _$this._attachments = attachments;

  SelfOrOtherEnum _selfOrOther;
  SelfOrOtherEnum get selfOrOther => _$this._selfOrOther;
  set selfOrOther(SelfOrOtherEnum selfOrOther) =>
      _$this._selfOrOther = selfOrOther;

  bool _isPinned;
  bool get isPinned => _$this._isPinned;
  set isPinned(bool isPinned) => _$this._isPinned = isPinned;

  MessageViewModelBuilder() {
    MessageViewModel._initializeBuilder(this);
  }

  MessageViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _messageId = $v.messageId;
      _issuedDate = $v.issuedDate;
      _issuerId = $v.issuerId;
      _issuerName = $v.issuerName;
      _content = $v.content;
      _attachments = $v.attachments?.toBuilder();
      _selfOrOther = $v.selfOrOther;
      _isPinned = $v.isPinned;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MessageViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MessageViewModel;
  }

  @override
  void update(void Function(MessageViewModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MessageViewModel build() {
    _$MessageViewModel _$result;
    try {
      _$result = _$v ??
          new _$MessageViewModel._(
              messageId: messageId,
              issuedDate: issuedDate,
              issuerId: issuerId,
              issuerName: issuerName,
              content: content,
              attachments: _attachments?.build(),
              selfOrOther: selfOrOther,
              isPinned: isPinned);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'attachments';
        _attachments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MessageViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
