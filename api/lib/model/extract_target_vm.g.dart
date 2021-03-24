// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'extract_target_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExtractTargetVM> _$extractTargetVMSerializer =
    new _$ExtractTargetVMSerializer();

class _$ExtractTargetVMSerializer
    implements StructuredSerializer<ExtractTargetVM> {
  @override
  final Iterable<Type> types = const [ExtractTargetVM, _$ExtractTargetVM];
  @override
  final String wireName = 'ExtractTargetVM';

  @override
  Iterable<Object> serialize(Serializers serializers, ExtractTargetVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.canCurrentUserReview;
    if (value != null) {
      result
        ..add('canCurrentUserReview')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.targetGlobalRoleOrProjectRole;
    if (value != null) {
      result
        ..add('targetGlobalRoleOrProjectRole')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reviewResult;
    if (value != null) {
      result
        ..add('reviewResult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reviewedBy;
    if (value != null) {
      result
        ..add('reviewedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserViewModel)));
    }
    value = object.reviewDesc;
    if (value != null) {
      result
        ..add('reviewDesc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reviewFiles;
    if (value != null) {
      result
        ..add('reviewFiles')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AppFileViewModel)])));
    }
    return result;
  }

  @override
  ExtractTargetVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExtractTargetVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'canCurrentUserReview':
          result.canCurrentUserReview = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'targetGlobalRoleOrProjectRole':
          result.targetGlobalRoleOrProjectRole = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reviewResult':
          result.reviewResult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'reviewedBy':
          result.reviewedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserViewModel)) as UserViewModel);
          break;
        case 'reviewDesc':
          result.reviewDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reviewFiles':
          result.reviewFiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AppFileViewModel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ExtractTargetVM extends ExtractTargetVM {
  @override
  final bool canCurrentUserReview;
  @override
  final String targetGlobalRoleOrProjectRole;
  @override
  final bool reviewResult;
  @override
  final UserViewModel reviewedBy;
  @override
  final String reviewDesc;
  @override
  final BuiltList<AppFileViewModel> reviewFiles;

  factory _$ExtractTargetVM([void Function(ExtractTargetVMBuilder) updates]) =>
      (new ExtractTargetVMBuilder()..update(updates)).build();

  _$ExtractTargetVM._(
      {this.canCurrentUserReview,
      this.targetGlobalRoleOrProjectRole,
      this.reviewResult,
      this.reviewedBy,
      this.reviewDesc,
      this.reviewFiles})
      : super._();

  @override
  ExtractTargetVM rebuild(void Function(ExtractTargetVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExtractTargetVMBuilder toBuilder() =>
      new ExtractTargetVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExtractTargetVM &&
        canCurrentUserReview == other.canCurrentUserReview &&
        targetGlobalRoleOrProjectRole == other.targetGlobalRoleOrProjectRole &&
        reviewResult == other.reviewResult &&
        reviewedBy == other.reviewedBy &&
        reviewDesc == other.reviewDesc &&
        reviewFiles == other.reviewFiles;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, canCurrentUserReview.hashCode),
                        targetGlobalRoleOrProjectRole.hashCode),
                    reviewResult.hashCode),
                reviewedBy.hashCode),
            reviewDesc.hashCode),
        reviewFiles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExtractTargetVM')
          ..add('canCurrentUserReview', canCurrentUserReview)
          ..add('targetGlobalRoleOrProjectRole', targetGlobalRoleOrProjectRole)
          ..add('reviewResult', reviewResult)
          ..add('reviewedBy', reviewedBy)
          ..add('reviewDesc', reviewDesc)
          ..add('reviewFiles', reviewFiles))
        .toString();
  }
}

class ExtractTargetVMBuilder
    implements Builder<ExtractTargetVM, ExtractTargetVMBuilder> {
  _$ExtractTargetVM _$v;

  bool _canCurrentUserReview;
  bool get canCurrentUserReview => _$this._canCurrentUserReview;
  set canCurrentUserReview(bool canCurrentUserReview) =>
      _$this._canCurrentUserReview = canCurrentUserReview;

  String _targetGlobalRoleOrProjectRole;
  String get targetGlobalRoleOrProjectRole =>
      _$this._targetGlobalRoleOrProjectRole;
  set targetGlobalRoleOrProjectRole(String targetGlobalRoleOrProjectRole) =>
      _$this._targetGlobalRoleOrProjectRole = targetGlobalRoleOrProjectRole;

  bool _reviewResult;
  bool get reviewResult => _$this._reviewResult;
  set reviewResult(bool reviewResult) => _$this._reviewResult = reviewResult;

  UserViewModelBuilder _reviewedBy;
  UserViewModelBuilder get reviewedBy =>
      _$this._reviewedBy ??= new UserViewModelBuilder();
  set reviewedBy(UserViewModelBuilder reviewedBy) =>
      _$this._reviewedBy = reviewedBy;

  String _reviewDesc;
  String get reviewDesc => _$this._reviewDesc;
  set reviewDesc(String reviewDesc) => _$this._reviewDesc = reviewDesc;

  ListBuilder<AppFileViewModel> _reviewFiles;
  ListBuilder<AppFileViewModel> get reviewFiles =>
      _$this._reviewFiles ??= new ListBuilder<AppFileViewModel>();
  set reviewFiles(ListBuilder<AppFileViewModel> reviewFiles) =>
      _$this._reviewFiles = reviewFiles;

  ExtractTargetVMBuilder() {
    ExtractTargetVM._initializeBuilder(this);
  }

  ExtractTargetVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _canCurrentUserReview = $v.canCurrentUserReview;
      _targetGlobalRoleOrProjectRole = $v.targetGlobalRoleOrProjectRole;
      _reviewResult = $v.reviewResult;
      _reviewedBy = $v.reviewedBy?.toBuilder();
      _reviewDesc = $v.reviewDesc;
      _reviewFiles = $v.reviewFiles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExtractTargetVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExtractTargetVM;
  }

  @override
  void update(void Function(ExtractTargetVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExtractTargetVM build() {
    _$ExtractTargetVM _$result;
    try {
      _$result = _$v ??
          new _$ExtractTargetVM._(
              canCurrentUserReview: canCurrentUserReview,
              targetGlobalRoleOrProjectRole: targetGlobalRoleOrProjectRole,
              reviewResult: reviewResult,
              reviewedBy: _reviewedBy?.build(),
              reviewDesc: reviewDesc,
              reviewFiles: _reviewFiles?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'reviewedBy';
        _reviewedBy?.build();

        _$failedField = 'reviewFiles';
        _reviewFiles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExtractTargetVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
