// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'transaction_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionViewModel> _$transactionViewModelSerializer =
    new _$TransactionViewModelSerializer();

class _$TransactionViewModelSerializer
    implements StructuredSerializer<TransactionViewModel> {
  @override
  final Iterable<Type> types = const [
    TransactionViewModel,
    _$TransactionViewModel
  ];
  @override
  final String wireName = 'TransactionViewModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TransactionViewModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.transactionId;
    if (value != null) {
      result
        ..add('transactionId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.newValues;
    if (value != null) {
      result
        ..add('newValues')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(JsonObject)])));
    }
    value = object.issuedAt;
    if (value != null) {
      result
        ..add('issuedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.basedOnTransaction;
    if (value != null) {
      result
        ..add('basedOnTransaction')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issuerId;
    if (value != null) {
      result
        ..add('issuerId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reviewedAt;
    if (value != null) {
      result
        ..add('reviewedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reviewedBy;
    if (value != null) {
      result
        ..add('reviewedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isAccepted;
    if (value != null) {
      result
        ..add('isAccepted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reviewNotes;
    if (value != null) {
      result
        ..add('reviewNotes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionAction;
    if (value != null) {
      result
        ..add('transactionAction')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(TransactionActionTypeEnum)));
    }
    value = object.files;
    if (value != null) {
      result
        ..add('files')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  TransactionViewModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionViewModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'transactionId':
          result.transactionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'newValues':
          result.newValues.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(JsonObject)])));
          break;
        case 'issuedAt':
          result.issuedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'basedOnTransaction':
          result.basedOnTransaction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issuerId':
          result.issuerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reviewedAt':
          result.reviewedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'reviewedBy':
          result.reviewedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isAccepted':
          result.isAccepted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'reviewNotes':
          result.reviewNotes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transactionAction':
          result.transactionAction = serializers.deserialize(value,
                  specifiedType: const FullType(TransactionActionTypeEnum))
              as TransactionActionTypeEnum;
          break;
        case 'files':
          result.files.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TransactionViewModel extends TransactionViewModel {
  @override
  final String transactionId;
  @override
  final BuiltMap<String, JsonObject> newValues;
  @override
  final DateTime issuedAt;
  @override
  final String basedOnTransaction;
  @override
  final String issuerId;
  @override
  final DateTime reviewedAt;
  @override
  final String reviewedBy;
  @override
  final bool isAccepted;
  @override
  final String reviewNotes;
  @override
  final TransactionActionTypeEnum transactionAction;
  @override
  final BuiltList<String> files;

  factory _$TransactionViewModel(
          [void Function(TransactionViewModelBuilder) updates]) =>
      (new TransactionViewModelBuilder()..update(updates)).build();

  _$TransactionViewModel._(
      {this.transactionId,
      this.newValues,
      this.issuedAt,
      this.basedOnTransaction,
      this.issuerId,
      this.reviewedAt,
      this.reviewedBy,
      this.isAccepted,
      this.reviewNotes,
      this.transactionAction,
      this.files})
      : super._();

  @override
  TransactionViewModel rebuild(
          void Function(TransactionViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionViewModelBuilder toBuilder() =>
      new TransactionViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionViewModel &&
        transactionId == other.transactionId &&
        newValues == other.newValues &&
        issuedAt == other.issuedAt &&
        basedOnTransaction == other.basedOnTransaction &&
        issuerId == other.issuerId &&
        reviewedAt == other.reviewedAt &&
        reviewedBy == other.reviewedBy &&
        isAccepted == other.isAccepted &&
        reviewNotes == other.reviewNotes &&
        transactionAction == other.transactionAction &&
        files == other.files;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, transactionId.hashCode),
                                            newValues.hashCode),
                                        issuedAt.hashCode),
                                    basedOnTransaction.hashCode),
                                issuerId.hashCode),
                            reviewedAt.hashCode),
                        reviewedBy.hashCode),
                    isAccepted.hashCode),
                reviewNotes.hashCode),
            transactionAction.hashCode),
        files.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransactionViewModel')
          ..add('transactionId', transactionId)
          ..add('newValues', newValues)
          ..add('issuedAt', issuedAt)
          ..add('basedOnTransaction', basedOnTransaction)
          ..add('issuerId', issuerId)
          ..add('reviewedAt', reviewedAt)
          ..add('reviewedBy', reviewedBy)
          ..add('isAccepted', isAccepted)
          ..add('reviewNotes', reviewNotes)
          ..add('transactionAction', transactionAction)
          ..add('files', files))
        .toString();
  }
}

class TransactionViewModelBuilder
    implements Builder<TransactionViewModel, TransactionViewModelBuilder> {
  _$TransactionViewModel _$v;

  String _transactionId;
  String get transactionId => _$this._transactionId;
  set transactionId(String transactionId) =>
      _$this._transactionId = transactionId;

  MapBuilder<String, JsonObject> _newValues;
  MapBuilder<String, JsonObject> get newValues =>
      _$this._newValues ??= new MapBuilder<String, JsonObject>();
  set newValues(MapBuilder<String, JsonObject> newValues) =>
      _$this._newValues = newValues;

  DateTime _issuedAt;
  DateTime get issuedAt => _$this._issuedAt;
  set issuedAt(DateTime issuedAt) => _$this._issuedAt = issuedAt;

  String _basedOnTransaction;
  String get basedOnTransaction => _$this._basedOnTransaction;
  set basedOnTransaction(String basedOnTransaction) =>
      _$this._basedOnTransaction = basedOnTransaction;

  String _issuerId;
  String get issuerId => _$this._issuerId;
  set issuerId(String issuerId) => _$this._issuerId = issuerId;

  DateTime _reviewedAt;
  DateTime get reviewedAt => _$this._reviewedAt;
  set reviewedAt(DateTime reviewedAt) => _$this._reviewedAt = reviewedAt;

  String _reviewedBy;
  String get reviewedBy => _$this._reviewedBy;
  set reviewedBy(String reviewedBy) => _$this._reviewedBy = reviewedBy;

  bool _isAccepted;
  bool get isAccepted => _$this._isAccepted;
  set isAccepted(bool isAccepted) => _$this._isAccepted = isAccepted;

  String _reviewNotes;
  String get reviewNotes => _$this._reviewNotes;
  set reviewNotes(String reviewNotes) => _$this._reviewNotes = reviewNotes;

  TransactionActionTypeEnum _transactionAction;
  TransactionActionTypeEnum get transactionAction => _$this._transactionAction;
  set transactionAction(TransactionActionTypeEnum transactionAction) =>
      _$this._transactionAction = transactionAction;

  ListBuilder<String> _files;
  ListBuilder<String> get files => _$this._files ??= new ListBuilder<String>();
  set files(ListBuilder<String> files) => _$this._files = files;

  TransactionViewModelBuilder() {
    TransactionViewModel._initializeBuilder(this);
  }

  TransactionViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionId = $v.transactionId;
      _newValues = $v.newValues?.toBuilder();
      _issuedAt = $v.issuedAt;
      _basedOnTransaction = $v.basedOnTransaction;
      _issuerId = $v.issuerId;
      _reviewedAt = $v.reviewedAt;
      _reviewedBy = $v.reviewedBy;
      _isAccepted = $v.isAccepted;
      _reviewNotes = $v.reviewNotes;
      _transactionAction = $v.transactionAction;
      _files = $v.files?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionViewModel;
  }

  @override
  void update(void Function(TransactionViewModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransactionViewModel build() {
    _$TransactionViewModel _$result;
    try {
      _$result = _$v ??
          new _$TransactionViewModel._(
              transactionId: transactionId,
              newValues: _newValues?.build(),
              issuedAt: issuedAt,
              basedOnTransaction: basedOnTransaction,
              issuerId: issuerId,
              reviewedAt: reviewedAt,
              reviewedBy: reviewedBy,
              isAccepted: isAccepted,
              reviewNotes: reviewNotes,
              transactionAction: transactionAction,
              files: _files?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'newValues';
        _newValues?.build();

        _$failedField = 'files';
        _files?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TransactionViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
