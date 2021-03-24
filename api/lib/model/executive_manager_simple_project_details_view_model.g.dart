// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'executive_manager_simple_project_details_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExecutiveManagerSimpleProjectDetailsViewModel>
    _$executiveManagerSimpleProjectDetailsViewModelSerializer =
    new _$ExecutiveManagerSimpleProjectDetailsViewModelSerializer();

class _$ExecutiveManagerSimpleProjectDetailsViewModelSerializer
    implements
        StructuredSerializer<ExecutiveManagerSimpleProjectDetailsViewModel> {
  @override
  final Iterable<Type> types = const [
    ExecutiveManagerSimpleProjectDetailsViewModel,
    _$ExecutiveManagerSimpleProjectDetailsViewModel
  ];
  @override
  final String wireName = 'ExecutiveManagerSimpleProjectDetailsViewModel';

  @override
  Iterable<Object> serialize(Serializers serializers,
      ExecutiveManagerSimpleProjectDetailsViewModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.projectId;
    if (value != null) {
      result
        ..add('projectId')
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
    value = object.projectDesc;
    if (value != null) {
      result
        ..add('projectDesc')
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
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GovsCitiesViewModelCity)));
    }
    value = object.governorate;
    if (value != null) {
      result
        ..add('governorate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GovsCitiesViewModelGov)));
    }
    value = object.creationDate;
    if (value != null) {
      result
        ..add('creationDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.requesterInfo;
    if (value != null) {
      result
        ..add('requesterInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ProjectRequesterInfo)));
    }
    value = object.ownerCompany;
    if (value != null) {
      result
        ..add('ownerCompany')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GovCompanyViewModel)));
    }
    value = object.files;
    if (value != null) {
      result
        ..add('files')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AppFileViewModel)])));
    }
    value = object.isDirectSelectOfExecuter;
    if (value != null) {
      result
        ..add('isDirectSelectOfExecuter')
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
    value = object.projectExecuterCompany;
    if (value != null) {
      result
        ..add('projectExecuterCompany')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ExecutionCompanyViewModel)));
    }
    value = object.initialRequest;
    if (value != null) {
      result
        ..add('initialRequest')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                ReqExecutiveManagerCompleteProjectRequestViewModel)));
    }
    return result;
  }

  @override
  ExecutiveManagerSimpleProjectDetailsViewModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExecutiveManagerSimpleProjectDetailsViewModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'projectId':
          result.projectId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projectName':
          result.projectName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projectDesc':
          result.projectDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GovsCitiesViewModelCity))
              as GovsCitiesViewModelCity);
          break;
        case 'governorate':
          result.governorate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GovsCitiesViewModelGov))
              as GovsCitiesViewModelGov);
          break;
        case 'creationDate':
          result.creationDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'requesterInfo':
          result.requesterInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ProjectRequesterInfo))
              as ProjectRequesterInfo);
          break;
        case 'ownerCompany':
          result.ownerCompany.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GovCompanyViewModel))
              as GovCompanyViewModel);
          break;
        case 'files':
          result.files.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AppFileViewModel)]))
              as BuiltList<Object>);
          break;
        case 'isDirectSelectOfExecuter':
          result.isDirectSelectOfExecuter = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'executerSelectionDesc':
          result.executerSelectionDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projectExecuterCompany':
          result.projectExecuterCompany.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ExecutionCompanyViewModel))
              as ExecutionCompanyViewModel);
          break;
        case 'initialRequest':
          result.initialRequest.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      ReqExecutiveManagerCompleteProjectRequestViewModel))
              as ReqExecutiveManagerCompleteProjectRequestViewModel);
          break;
      }
    }

    return result.build();
  }
}

class _$ExecutiveManagerSimpleProjectDetailsViewModel
    extends ExecutiveManagerSimpleProjectDetailsViewModel {
  @override
  final String projectId;
  @override
  final String projectName;
  @override
  final String projectDesc;
  @override
  final String notes;
  @override
  final GovsCitiesViewModelCity city;
  @override
  final GovsCitiesViewModelGov governorate;
  @override
  final DateTime creationDate;
  @override
  final ProjectRequesterInfo requesterInfo;
  @override
  final GovCompanyViewModel ownerCompany;
  @override
  final BuiltList<AppFileViewModel> files;
  @override
  final bool isDirectSelectOfExecuter;
  @override
  final String executerSelectionDesc;
  @override
  final ExecutionCompanyViewModel projectExecuterCompany;
  @override
  final ReqExecutiveManagerCompleteProjectRequestViewModel initialRequest;

  factory _$ExecutiveManagerSimpleProjectDetailsViewModel(
          [void Function(ExecutiveManagerSimpleProjectDetailsViewModelBuilder)
              updates]) =>
      (new ExecutiveManagerSimpleProjectDetailsViewModelBuilder()
            ..update(updates))
          .build();

  _$ExecutiveManagerSimpleProjectDetailsViewModel._(
      {this.projectId,
      this.projectName,
      this.projectDesc,
      this.notes,
      this.city,
      this.governorate,
      this.creationDate,
      this.requesterInfo,
      this.ownerCompany,
      this.files,
      this.isDirectSelectOfExecuter,
      this.executerSelectionDesc,
      this.projectExecuterCompany,
      this.initialRequest})
      : super._();

  @override
  ExecutiveManagerSimpleProjectDetailsViewModel rebuild(
          void Function(ExecutiveManagerSimpleProjectDetailsViewModelBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExecutiveManagerSimpleProjectDetailsViewModelBuilder toBuilder() =>
      new ExecutiveManagerSimpleProjectDetailsViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExecutiveManagerSimpleProjectDetailsViewModel &&
        projectId == other.projectId &&
        projectName == other.projectName &&
        projectDesc == other.projectDesc &&
        notes == other.notes &&
        city == other.city &&
        governorate == other.governorate &&
        creationDate == other.creationDate &&
        requesterInfo == other.requesterInfo &&
        ownerCompany == other.ownerCompany &&
        files == other.files &&
        isDirectSelectOfExecuter == other.isDirectSelectOfExecuter &&
        executerSelectionDesc == other.executerSelectionDesc &&
        projectExecuterCompany == other.projectExecuterCompany &&
        initialRequest == other.initialRequest;
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
                                                        $jc(0,
                                                            projectId.hashCode),
                                                        projectName.hashCode),
                                                    projectDesc.hashCode),
                                                notes.hashCode),
                                            city.hashCode),
                                        governorate.hashCode),
                                    creationDate.hashCode),
                                requesterInfo.hashCode),
                            ownerCompany.hashCode),
                        files.hashCode),
                    isDirectSelectOfExecuter.hashCode),
                executerSelectionDesc.hashCode),
            projectExecuterCompany.hashCode),
        initialRequest.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ExecutiveManagerSimpleProjectDetailsViewModel')
          ..add('projectId', projectId)
          ..add('projectName', projectName)
          ..add('projectDesc', projectDesc)
          ..add('notes', notes)
          ..add('city', city)
          ..add('governorate', governorate)
          ..add('creationDate', creationDate)
          ..add('requesterInfo', requesterInfo)
          ..add('ownerCompany', ownerCompany)
          ..add('files', files)
          ..add('isDirectSelectOfExecuter', isDirectSelectOfExecuter)
          ..add('executerSelectionDesc', executerSelectionDesc)
          ..add('projectExecuterCompany', projectExecuterCompany)
          ..add('initialRequest', initialRequest))
        .toString();
  }
}

class ExecutiveManagerSimpleProjectDetailsViewModelBuilder
    implements
        Builder<ExecutiveManagerSimpleProjectDetailsViewModel,
            ExecutiveManagerSimpleProjectDetailsViewModelBuilder> {
  _$ExecutiveManagerSimpleProjectDetailsViewModel _$v;

  String _projectId;
  String get projectId => _$this._projectId;
  set projectId(String projectId) => _$this._projectId = projectId;

  String _projectName;
  String get projectName => _$this._projectName;
  set projectName(String projectName) => _$this._projectName = projectName;

  String _projectDesc;
  String get projectDesc => _$this._projectDesc;
  set projectDesc(String projectDesc) => _$this._projectDesc = projectDesc;

  String _notes;
  String get notes => _$this._notes;
  set notes(String notes) => _$this._notes = notes;

  GovsCitiesViewModelCityBuilder _city;
  GovsCitiesViewModelCityBuilder get city =>
      _$this._city ??= new GovsCitiesViewModelCityBuilder();
  set city(GovsCitiesViewModelCityBuilder city) => _$this._city = city;

  GovsCitiesViewModelGovBuilder _governorate;
  GovsCitiesViewModelGovBuilder get governorate =>
      _$this._governorate ??= new GovsCitiesViewModelGovBuilder();
  set governorate(GovsCitiesViewModelGovBuilder governorate) =>
      _$this._governorate = governorate;

  DateTime _creationDate;
  DateTime get creationDate => _$this._creationDate;
  set creationDate(DateTime creationDate) =>
      _$this._creationDate = creationDate;

  ProjectRequesterInfoBuilder _requesterInfo;
  ProjectRequesterInfoBuilder get requesterInfo =>
      _$this._requesterInfo ??= new ProjectRequesterInfoBuilder();
  set requesterInfo(ProjectRequesterInfoBuilder requesterInfo) =>
      _$this._requesterInfo = requesterInfo;

  GovCompanyViewModelBuilder _ownerCompany;
  GovCompanyViewModelBuilder get ownerCompany =>
      _$this._ownerCompany ??= new GovCompanyViewModelBuilder();
  set ownerCompany(GovCompanyViewModelBuilder ownerCompany) =>
      _$this._ownerCompany = ownerCompany;

  ListBuilder<AppFileViewModel> _files;
  ListBuilder<AppFileViewModel> get files =>
      _$this._files ??= new ListBuilder<AppFileViewModel>();
  set files(ListBuilder<AppFileViewModel> files) => _$this._files = files;

  bool _isDirectSelectOfExecuter;
  bool get isDirectSelectOfExecuter => _$this._isDirectSelectOfExecuter;
  set isDirectSelectOfExecuter(bool isDirectSelectOfExecuter) =>
      _$this._isDirectSelectOfExecuter = isDirectSelectOfExecuter;

  String _executerSelectionDesc;
  String get executerSelectionDesc => _$this._executerSelectionDesc;
  set executerSelectionDesc(String executerSelectionDesc) =>
      _$this._executerSelectionDesc = executerSelectionDesc;

  ExecutionCompanyViewModelBuilder _projectExecuterCompany;
  ExecutionCompanyViewModelBuilder get projectExecuterCompany =>
      _$this._projectExecuterCompany ??= new ExecutionCompanyViewModelBuilder();
  set projectExecuterCompany(
          ExecutionCompanyViewModelBuilder projectExecuterCompany) =>
      _$this._projectExecuterCompany = projectExecuterCompany;

  ReqExecutiveManagerCompleteProjectRequestViewModelBuilder _initialRequest;
  ReqExecutiveManagerCompleteProjectRequestViewModelBuilder
      get initialRequest => _$this._initialRequest ??=
          new ReqExecutiveManagerCompleteProjectRequestViewModelBuilder();
  set initialRequest(
          ReqExecutiveManagerCompleteProjectRequestViewModelBuilder
              initialRequest) =>
      _$this._initialRequest = initialRequest;

  ExecutiveManagerSimpleProjectDetailsViewModelBuilder() {
    ExecutiveManagerSimpleProjectDetailsViewModel._initializeBuilder(this);
  }

  ExecutiveManagerSimpleProjectDetailsViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projectId = $v.projectId;
      _projectName = $v.projectName;
      _projectDesc = $v.projectDesc;
      _notes = $v.notes;
      _city = $v.city?.toBuilder();
      _governorate = $v.governorate?.toBuilder();
      _creationDate = $v.creationDate;
      _requesterInfo = $v.requesterInfo?.toBuilder();
      _ownerCompany = $v.ownerCompany?.toBuilder();
      _files = $v.files?.toBuilder();
      _isDirectSelectOfExecuter = $v.isDirectSelectOfExecuter;
      _executerSelectionDesc = $v.executerSelectionDesc;
      _projectExecuterCompany = $v.projectExecuterCompany?.toBuilder();
      _initialRequest = $v.initialRequest?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExecutiveManagerSimpleProjectDetailsViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExecutiveManagerSimpleProjectDetailsViewModel;
  }

  @override
  void update(
      void Function(ExecutiveManagerSimpleProjectDetailsViewModelBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExecutiveManagerSimpleProjectDetailsViewModel build() {
    _$ExecutiveManagerSimpleProjectDetailsViewModel _$result;
    try {
      _$result = _$v ??
          new _$ExecutiveManagerSimpleProjectDetailsViewModel._(
              projectId: projectId,
              projectName: projectName,
              projectDesc: projectDesc,
              notes: notes,
              city: _city?.build(),
              governorate: _governorate?.build(),
              creationDate: creationDate,
              requesterInfo: _requesterInfo?.build(),
              ownerCompany: _ownerCompany?.build(),
              files: _files?.build(),
              isDirectSelectOfExecuter: isDirectSelectOfExecuter,
              executerSelectionDesc: executerSelectionDesc,
              projectExecuterCompany: _projectExecuterCompany?.build(),
              initialRequest: _initialRequest?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'city';
        _city?.build();
        _$failedField = 'governorate';
        _governorate?.build();

        _$failedField = 'requesterInfo';
        _requesterInfo?.build();
        _$failedField = 'ownerCompany';
        _ownerCompany?.build();
        _$failedField = 'files';
        _files?.build();

        _$failedField = 'projectExecuterCompany';
        _projectExecuterCompany?.build();
        _$failedField = 'initialRequest';
        _initialRequest?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExecutiveManagerSimpleProjectDetailsViewModel',
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
