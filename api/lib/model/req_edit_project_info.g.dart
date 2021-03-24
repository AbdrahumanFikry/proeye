// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'req_edit_project_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReqEditProjectInfo> _$reqEditProjectInfoSerializer =
    new _$ReqEditProjectInfoSerializer();

class _$ReqEditProjectInfoSerializer
    implements StructuredSerializer<ReqEditProjectInfo> {
  @override
  final Iterable<Type> types = const [ReqEditProjectInfo, _$ReqEditProjectInfo];
  @override
  final String wireName = 'ReqEditProjectInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, ReqEditProjectInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.cityId;
    if (value != null) {
      result
        ..add('cityId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.govId;
    if (value != null) {
      result
        ..add('govId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.projectDesc;
    if (value != null) {
      result
        ..add('projectDesc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectName;
    if (value != null) {
      result
        ..add('projectName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notes;
    if (value != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectOwnerCompanyId;
    if (value != null) {
      result
        ..add('projectOwnerCompanyId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isDirectSelection;
    if (value != null) {
      result
        ..add('isDirectSelection')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.executerSelectionDesc;
    if (value != null) {
      result
        ..add('executerSelectionDesc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.executionCompanyId;
    if (value != null) {
      result
        ..add('executionCompanyId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
    value = object.consultingCenterRole;
    if (value != null) {
      result
        ..add('consultingCenterRole')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ConsultingCenterRoleEnum)));
    }
    value = object.initialWarranty;
    if (value != null) {
      result
        ..add('initialWarranty')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(StartDurationDto)));
    }
    value = object.finalWarranty;
    if (value != null) {
      result
        ..add('finalWarranty')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(StartDurationDto)));
    }
    value = object.actualEnd;
    if (value != null) {
      result
        ..add('actualEnd')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.requesterEmail;
    if (value != null) {
      result
        ..add('requesterEmail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requesterLandline;
    if (value != null) {
      result
        ..add('requesterLandline')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requesterName;
    if (value != null) {
      result
        ..add('requesterName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requesterPhone;
    if (value != null) {
      result
        ..add('requesterPhone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requesterRelationToOwnerCompany;
    if (value != null) {
      result
        ..add('requesterRelationToOwnerCompany')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CompanyUserRelationTypesEnum)));
    }
    value = object.requesterRelationToOwnerCompanyDesc;
    if (value != null) {
      result
        ..add('requesterRelationToOwnerCompanyDesc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ReqEditProjectInfo deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReqEditProjectInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'cityId':
          result.cityId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'govId':
          result.govId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'projectDesc':
          result.projectDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projectName':
          result.projectName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projectOwnerCompanyId':
          result.projectOwnerCompanyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isDirectSelection':
          result.isDirectSelection = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'executerSelectionDesc':
          result.executerSelectionDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'executionCompanyId':
          result.executionCompanyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
        case 'consultingCenterRole':
          result.consultingCenterRole = serializers.deserialize(value,
                  specifiedType: const FullType(ConsultingCenterRoleEnum))
              as ConsultingCenterRoleEnum;
          break;
        case 'initialWarranty':
          result.initialWarranty.replace(serializers.deserialize(value,
                  specifiedType: const FullType(StartDurationDto))
              as StartDurationDto);
          break;
        case 'finalWarranty':
          result.finalWarranty.replace(serializers.deserialize(value,
                  specifiedType: const FullType(StartDurationDto))
              as StartDurationDto);
          break;
        case 'actualEnd':
          result.actualEnd = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'requesterEmail':
          result.requesterEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'requesterLandline':
          result.requesterLandline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'requesterName':
          result.requesterName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'requesterPhone':
          result.requesterPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'requesterRelationToOwnerCompany':
          result.requesterRelationToOwnerCompany = serializers.deserialize(
                  value,
                  specifiedType: const FullType(CompanyUserRelationTypesEnum))
              as CompanyUserRelationTypesEnum;
          break;
        case 'requesterRelationToOwnerCompanyDesc':
          result.requesterRelationToOwnerCompanyDesc = serializers.deserialize(
              value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReqEditProjectInfo extends ReqEditProjectInfo {
  @override
  final int cityId;
  @override
  final int govId;
  @override
  final String projectDesc;
  @override
  final String projectName;
  @override
  final String notes;
  @override
  final String projectOwnerCompanyId;
  @override
  final bool isDirectSelection;
  @override
  final String executerSelectionDesc;
  @override
  final String executionCompanyId;
  @override
  final String projectManagerId;
  @override
  final DateTime startDate;
  @override
  final int expectedDuration;
  @override
  final double expectedCostInPounds;
  @override
  final ConsultingCenterRoleEnum consultingCenterRole;
  @override
  final StartDurationDto initialWarranty;
  @override
  final StartDurationDto finalWarranty;
  @override
  final DateTime actualEnd;
  @override
  final String requesterEmail;
  @override
  final String requesterLandline;
  @override
  final String requesterName;
  @override
  final String requesterPhone;
  @override
  final CompanyUserRelationTypesEnum requesterRelationToOwnerCompany;
  @override
  final String requesterRelationToOwnerCompanyDesc;

  factory _$ReqEditProjectInfo(
          [void Function(ReqEditProjectInfoBuilder) updates]) =>
      (new ReqEditProjectInfoBuilder()..update(updates)).build();

  _$ReqEditProjectInfo._(
      {this.cityId,
      this.govId,
      this.projectDesc,
      this.projectName,
      this.notes,
      this.projectOwnerCompanyId,
      this.isDirectSelection,
      this.executerSelectionDesc,
      this.executionCompanyId,
      this.projectManagerId,
      this.startDate,
      this.expectedDuration,
      this.expectedCostInPounds,
      this.consultingCenterRole,
      this.initialWarranty,
      this.finalWarranty,
      this.actualEnd,
      this.requesterEmail,
      this.requesterLandline,
      this.requesterName,
      this.requesterPhone,
      this.requesterRelationToOwnerCompany,
      this.requesterRelationToOwnerCompanyDesc})
      : super._();

  @override
  ReqEditProjectInfo rebuild(
          void Function(ReqEditProjectInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReqEditProjectInfoBuilder toBuilder() =>
      new ReqEditProjectInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReqEditProjectInfo &&
        cityId == other.cityId &&
        govId == other.govId &&
        projectDesc == other.projectDesc &&
        projectName == other.projectName &&
        notes == other.notes &&
        projectOwnerCompanyId == other.projectOwnerCompanyId &&
        isDirectSelection == other.isDirectSelection &&
        executerSelectionDesc == other.executerSelectionDesc &&
        executionCompanyId == other.executionCompanyId &&
        projectManagerId == other.projectManagerId &&
        startDate == other.startDate &&
        expectedDuration == other.expectedDuration &&
        expectedCostInPounds == other.expectedCostInPounds &&
        consultingCenterRole == other.consultingCenterRole &&
        initialWarranty == other.initialWarranty &&
        finalWarranty == other.finalWarranty &&
        actualEnd == other.actualEnd &&
        requesterEmail == other.requesterEmail &&
        requesterLandline == other.requesterLandline &&
        requesterName == other.requesterName &&
        requesterPhone == other.requesterPhone &&
        requesterRelationToOwnerCompany ==
            other.requesterRelationToOwnerCompany &&
        requesterRelationToOwnerCompanyDesc ==
            other.requesterRelationToOwnerCompanyDesc;
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc(0, cityId.hashCode), govId.hashCode), projectDesc.hashCode), projectName.hashCode),
                                                                                notes.hashCode),
                                                                            projectOwnerCompanyId.hashCode),
                                                                        isDirectSelection.hashCode),
                                                                    executerSelectionDesc.hashCode),
                                                                executionCompanyId.hashCode),
                                                            projectManagerId.hashCode),
                                                        startDate.hashCode),
                                                    expectedDuration.hashCode),
                                                expectedCostInPounds.hashCode),
                                            consultingCenterRole.hashCode),
                                        initialWarranty.hashCode),
                                    finalWarranty.hashCode),
                                actualEnd.hashCode),
                            requesterEmail.hashCode),
                        requesterLandline.hashCode),
                    requesterName.hashCode),
                requesterPhone.hashCode),
            requesterRelationToOwnerCompany.hashCode),
        requesterRelationToOwnerCompanyDesc.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReqEditProjectInfo')
          ..add('cityId', cityId)
          ..add('govId', govId)
          ..add('projectDesc', projectDesc)
          ..add('projectName', projectName)
          ..add('notes', notes)
          ..add('projectOwnerCompanyId', projectOwnerCompanyId)
          ..add('isDirectSelection', isDirectSelection)
          ..add('executerSelectionDesc', executerSelectionDesc)
          ..add('executionCompanyId', executionCompanyId)
          ..add('projectManagerId', projectManagerId)
          ..add('startDate', startDate)
          ..add('expectedDuration', expectedDuration)
          ..add('expectedCostInPounds', expectedCostInPounds)
          ..add('consultingCenterRole', consultingCenterRole)
          ..add('initialWarranty', initialWarranty)
          ..add('finalWarranty', finalWarranty)
          ..add('actualEnd', actualEnd)
          ..add('requesterEmail', requesterEmail)
          ..add('requesterLandline', requesterLandline)
          ..add('requesterName', requesterName)
          ..add('requesterPhone', requesterPhone)
          ..add('requesterRelationToOwnerCompany',
              requesterRelationToOwnerCompany)
          ..add('requesterRelationToOwnerCompanyDesc',
              requesterRelationToOwnerCompanyDesc))
        .toString();
  }
}

class ReqEditProjectInfoBuilder
    implements Builder<ReqEditProjectInfo, ReqEditProjectInfoBuilder> {
  _$ReqEditProjectInfo _$v;

  int _cityId;
  int get cityId => _$this._cityId;
  set cityId(int cityId) => _$this._cityId = cityId;

  int _govId;
  int get govId => _$this._govId;
  set govId(int govId) => _$this._govId = govId;

  String _projectDesc;
  String get projectDesc => _$this._projectDesc;
  set projectDesc(String projectDesc) => _$this._projectDesc = projectDesc;

  String _projectName;
  String get projectName => _$this._projectName;
  set projectName(String projectName) => _$this._projectName = projectName;

  String _notes;
  String get notes => _$this._notes;
  set notes(String notes) => _$this._notes = notes;

  String _projectOwnerCompanyId;
  String get projectOwnerCompanyId => _$this._projectOwnerCompanyId;
  set projectOwnerCompanyId(String projectOwnerCompanyId) =>
      _$this._projectOwnerCompanyId = projectOwnerCompanyId;

  bool _isDirectSelection;
  bool get isDirectSelection => _$this._isDirectSelection;
  set isDirectSelection(bool isDirectSelection) =>
      _$this._isDirectSelection = isDirectSelection;

  String _executerSelectionDesc;
  String get executerSelectionDesc => _$this._executerSelectionDesc;
  set executerSelectionDesc(String executerSelectionDesc) =>
      _$this._executerSelectionDesc = executerSelectionDesc;

  String _executionCompanyId;
  String get executionCompanyId => _$this._executionCompanyId;
  set executionCompanyId(String executionCompanyId) =>
      _$this._executionCompanyId = executionCompanyId;

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

  ConsultingCenterRoleEnum _consultingCenterRole;
  ConsultingCenterRoleEnum get consultingCenterRole =>
      _$this._consultingCenterRole;
  set consultingCenterRole(ConsultingCenterRoleEnum consultingCenterRole) =>
      _$this._consultingCenterRole = consultingCenterRole;

  StartDurationDtoBuilder _initialWarranty;
  StartDurationDtoBuilder get initialWarranty =>
      _$this._initialWarranty ??= new StartDurationDtoBuilder();
  set initialWarranty(StartDurationDtoBuilder initialWarranty) =>
      _$this._initialWarranty = initialWarranty;

  StartDurationDtoBuilder _finalWarranty;
  StartDurationDtoBuilder get finalWarranty =>
      _$this._finalWarranty ??= new StartDurationDtoBuilder();
  set finalWarranty(StartDurationDtoBuilder finalWarranty) =>
      _$this._finalWarranty = finalWarranty;

  DateTime _actualEnd;
  DateTime get actualEnd => _$this._actualEnd;
  set actualEnd(DateTime actualEnd) => _$this._actualEnd = actualEnd;

  String _requesterEmail;
  String get requesterEmail => _$this._requesterEmail;
  set requesterEmail(String requesterEmail) =>
      _$this._requesterEmail = requesterEmail;

  String _requesterLandline;
  String get requesterLandline => _$this._requesterLandline;
  set requesterLandline(String requesterLandline) =>
      _$this._requesterLandline = requesterLandline;

  String _requesterName;
  String get requesterName => _$this._requesterName;
  set requesterName(String requesterName) =>
      _$this._requesterName = requesterName;

  String _requesterPhone;
  String get requesterPhone => _$this._requesterPhone;
  set requesterPhone(String requesterPhone) =>
      _$this._requesterPhone = requesterPhone;

  CompanyUserRelationTypesEnum _requesterRelationToOwnerCompany;
  CompanyUserRelationTypesEnum get requesterRelationToOwnerCompany =>
      _$this._requesterRelationToOwnerCompany;
  set requesterRelationToOwnerCompany(
          CompanyUserRelationTypesEnum requesterRelationToOwnerCompany) =>
      _$this._requesterRelationToOwnerCompany = requesterRelationToOwnerCompany;

  String _requesterRelationToOwnerCompanyDesc;
  String get requesterRelationToOwnerCompanyDesc =>
      _$this._requesterRelationToOwnerCompanyDesc;
  set requesterRelationToOwnerCompanyDesc(
          String requesterRelationToOwnerCompanyDesc) =>
      _$this._requesterRelationToOwnerCompanyDesc =
          requesterRelationToOwnerCompanyDesc;

  ReqEditProjectInfoBuilder() {
    ReqEditProjectInfo._initializeBuilder(this);
  }

  ReqEditProjectInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cityId = $v.cityId;
      _govId = $v.govId;
      _projectDesc = $v.projectDesc;
      _projectName = $v.projectName;
      _notes = $v.notes;
      _projectOwnerCompanyId = $v.projectOwnerCompanyId;
      _isDirectSelection = $v.isDirectSelection;
      _executerSelectionDesc = $v.executerSelectionDesc;
      _executionCompanyId = $v.executionCompanyId;
      _projectManagerId = $v.projectManagerId;
      _startDate = $v.startDate;
      _expectedDuration = $v.expectedDuration;
      _expectedCostInPounds = $v.expectedCostInPounds;
      _consultingCenterRole = $v.consultingCenterRole;
      _initialWarranty = $v.initialWarranty?.toBuilder();
      _finalWarranty = $v.finalWarranty?.toBuilder();
      _actualEnd = $v.actualEnd;
      _requesterEmail = $v.requesterEmail;
      _requesterLandline = $v.requesterLandline;
      _requesterName = $v.requesterName;
      _requesterPhone = $v.requesterPhone;
      _requesterRelationToOwnerCompany = $v.requesterRelationToOwnerCompany;
      _requesterRelationToOwnerCompanyDesc =
          $v.requesterRelationToOwnerCompanyDesc;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReqEditProjectInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReqEditProjectInfo;
  }

  @override
  void update(void Function(ReqEditProjectInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReqEditProjectInfo build() {
    _$ReqEditProjectInfo _$result;
    try {
      _$result = _$v ??
          new _$ReqEditProjectInfo._(
              cityId: cityId,
              govId: govId,
              projectDesc: projectDesc,
              projectName: projectName,
              notes: notes,
              projectOwnerCompanyId: projectOwnerCompanyId,
              isDirectSelection: isDirectSelection,
              executerSelectionDesc: executerSelectionDesc,
              executionCompanyId: executionCompanyId,
              projectManagerId: projectManagerId,
              startDate: startDate,
              expectedDuration: expectedDuration,
              expectedCostInPounds: expectedCostInPounds,
              consultingCenterRole: consultingCenterRole,
              initialWarranty: _initialWarranty?.build(),
              finalWarranty: _finalWarranty?.build(),
              actualEnd: actualEnd,
              requesterEmail: requesterEmail,
              requesterLandline: requesterLandline,
              requesterName: requesterName,
              requesterPhone: requesterPhone,
              requesterRelationToOwnerCompany: requesterRelationToOwnerCompany,
              requesterRelationToOwnerCompanyDesc:
                  requesterRelationToOwnerCompanyDesc);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'initialWarranty';
        _initialWarranty?.build();
        _$failedField = 'finalWarranty';
        _finalWarranty?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReqEditProjectInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
