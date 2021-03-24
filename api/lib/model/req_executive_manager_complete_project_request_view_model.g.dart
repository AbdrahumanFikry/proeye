// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'req_executive_manager_complete_project_request_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReqExecutiveManagerCompleteProjectRequestViewModel>
    _$reqExecutiveManagerCompleteProjectRequestViewModelSerializer =
    new _$ReqExecutiveManagerCompleteProjectRequestViewModelSerializer();

class _$ReqExecutiveManagerCompleteProjectRequestViewModelSerializer
    implements
        StructuredSerializer<
            ReqExecutiveManagerCompleteProjectRequestViewModel> {
  @override
  final Iterable<Type> types = const [
    ReqExecutiveManagerCompleteProjectRequestViewModel,
    _$ReqExecutiveManagerCompleteProjectRequestViewModel
  ];
  @override
  final String wireName = 'ReqExecutiveManagerCompleteProjectRequestViewModel';

  @override
  Iterable<Object> serialize(Serializers serializers,
      ReqExecutiveManagerCompleteProjectRequestViewModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.committees;
    if (value != null) {
      result
        ..add('committees')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ReqCommitteeVM)])));
    }
    value = object.projectManagerId;
    if (value != null) {
      result
        ..add('projectManagerId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.expectedDuration;
    if (value != null) {
      result
        ..add('expectedDuration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.expectedCostInPounds;
    if (value != null) {
      result
        ..add('expectedCostInPounds')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.relativeFileUrls;
    if (value != null) {
      result
        ..add('relativeFileUrls')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.consultingCenterRole;
    if (value != null) {
      result
        ..add('consultingCenterRole')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ConsultingCenterRoleEnum)));
    }
    return result;
  }

  @override
  ReqExecutiveManagerCompleteProjectRequestViewModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new ReqExecutiveManagerCompleteProjectRequestViewModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'committees':
          result.committees.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ReqCommitteeVM)]))
              as BuiltList<Object>);
          break;
        case 'projectManagerId':
          result.projectManagerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'expectedDuration':
          result.expectedDuration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'expectedCostInPounds':
          result.expectedCostInPounds = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'relativeFileUrls':
          result.relativeFileUrls.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'consultingCenterRole':
          result.consultingCenterRole = serializers.deserialize(value,
                  specifiedType: const FullType(ConsultingCenterRoleEnum))
              as ConsultingCenterRoleEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$ReqExecutiveManagerCompleteProjectRequestViewModel
    extends ReqExecutiveManagerCompleteProjectRequestViewModel {
  @override
  final BuiltList<ReqCommitteeVM> committees;
  @override
  final String projectManagerId;
  @override
  final DateTime startDate;
  @override
  final int expectedDuration;
  @override
  final double expectedCostInPounds;
  @override
  final BuiltList<String> relativeFileUrls;
  @override
  final ConsultingCenterRoleEnum consultingCenterRole;

  factory _$ReqExecutiveManagerCompleteProjectRequestViewModel(
          [void Function(
                  ReqExecutiveManagerCompleteProjectRequestViewModelBuilder)
              updates]) =>
      (new ReqExecutiveManagerCompleteProjectRequestViewModelBuilder()
            ..update(updates))
          .build();

  _$ReqExecutiveManagerCompleteProjectRequestViewModel._(
      {this.committees,
      this.projectManagerId,
      this.startDate,
      this.expectedDuration,
      this.expectedCostInPounds,
      this.relativeFileUrls,
      this.consultingCenterRole})
      : super._();

  @override
  ReqExecutiveManagerCompleteProjectRequestViewModel rebuild(
          void Function(
                  ReqExecutiveManagerCompleteProjectRequestViewModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReqExecutiveManagerCompleteProjectRequestViewModelBuilder toBuilder() =>
      new ReqExecutiveManagerCompleteProjectRequestViewModelBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReqExecutiveManagerCompleteProjectRequestViewModel &&
        committees == other.committees &&
        projectManagerId == other.projectManagerId &&
        startDate == other.startDate &&
        expectedDuration == other.expectedDuration &&
        expectedCostInPounds == other.expectedCostInPounds &&
        relativeFileUrls == other.relativeFileUrls &&
        consultingCenterRole == other.consultingCenterRole;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, committees.hashCode),
                            projectManagerId.hashCode),
                        startDate.hashCode),
                    expectedDuration.hashCode),
                expectedCostInPounds.hashCode),
            relativeFileUrls.hashCode),
        consultingCenterRole.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ReqExecutiveManagerCompleteProjectRequestViewModel')
          ..add('committees', committees)
          ..add('projectManagerId', projectManagerId)
          ..add('startDate', startDate)
          ..add('expectedDuration', expectedDuration)
          ..add('expectedCostInPounds', expectedCostInPounds)
          ..add('relativeFileUrls', relativeFileUrls)
          ..add('consultingCenterRole', consultingCenterRole))
        .toString();
  }
}

class ReqExecutiveManagerCompleteProjectRequestViewModelBuilder
    implements
        Builder<ReqExecutiveManagerCompleteProjectRequestViewModel,
            ReqExecutiveManagerCompleteProjectRequestViewModelBuilder> {
  _$ReqExecutiveManagerCompleteProjectRequestViewModel _$v;

  ListBuilder<ReqCommitteeVM> _committees;
  ListBuilder<ReqCommitteeVM> get committees =>
      _$this._committees ??= new ListBuilder<ReqCommitteeVM>();
  set committees(ListBuilder<ReqCommitteeVM> committees) =>
      _$this._committees = committees;

  String _projectManagerId;
  String get projectManagerId => _$this._projectManagerId;
  set projectManagerId(String projectManagerId) =>
      _$this._projectManagerId = projectManagerId;

  DateTime _startDate;
  DateTime get startDate => _$this._startDate;
  set startDate(DateTime startDate) => _$this._startDate = startDate;

  int _expectedDuration;
  int get expectedDuration => _$this._expectedDuration;
  set expectedDuration(int expectedDuration) =>
      _$this._expectedDuration = expectedDuration;

  double _expectedCostInPounds;
  double get expectedCostInPounds => _$this._expectedCostInPounds;
  set expectedCostInPounds(double expectedCostInPounds) =>
      _$this._expectedCostInPounds = expectedCostInPounds;

  ListBuilder<String> _relativeFileUrls;
  ListBuilder<String> get relativeFileUrls =>
      _$this._relativeFileUrls ??= new ListBuilder<String>();
  set relativeFileUrls(ListBuilder<String> relativeFileUrls) =>
      _$this._relativeFileUrls = relativeFileUrls;

  ConsultingCenterRoleEnum _consultingCenterRole;
  ConsultingCenterRoleEnum get consultingCenterRole =>
      _$this._consultingCenterRole;
  set consultingCenterRole(ConsultingCenterRoleEnum consultingCenterRole) =>
      _$this._consultingCenterRole = consultingCenterRole;

  ReqExecutiveManagerCompleteProjectRequestViewModelBuilder() {
    ReqExecutiveManagerCompleteProjectRequestViewModel._initializeBuilder(this);
  }

  ReqExecutiveManagerCompleteProjectRequestViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _committees = $v.committees?.toBuilder();
      _projectManagerId = $v.projectManagerId;
      _startDate = $v.startDate;
      _expectedDuration = $v.expectedDuration;
      _expectedCostInPounds = $v.expectedCostInPounds;
      _relativeFileUrls = $v.relativeFileUrls?.toBuilder();
      _consultingCenterRole = $v.consultingCenterRole;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReqExecutiveManagerCompleteProjectRequestViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReqExecutiveManagerCompleteProjectRequestViewModel;
  }

  @override
  void update(
      void Function(ReqExecutiveManagerCompleteProjectRequestViewModelBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReqExecutiveManagerCompleteProjectRequestViewModel build() {
    _$ReqExecutiveManagerCompleteProjectRequestViewModel _$result;
    try {
      _$result = _$v ??
          new _$ReqExecutiveManagerCompleteProjectRequestViewModel._(
              committees: _committees?.build(),
              projectManagerId: projectManagerId,
              startDate: startDate,
              expectedDuration: expectedDuration,
              expectedCostInPounds: expectedCostInPounds,
              relativeFileUrls: _relativeFileUrls?.build(),
              consultingCenterRole: consultingCenterRole);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'committees';
        _committees?.build();

        _$failedField = 'relativeFileUrls';
        _relativeFileUrls?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReqExecutiveManagerCompleteProjectRequestViewModel',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
