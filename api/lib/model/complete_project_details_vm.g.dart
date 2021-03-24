// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'complete_project_details_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompleteProjectDetailsVM> _$completeProjectDetailsVMSerializer =
    new _$CompleteProjectDetailsVMSerializer();

class _$CompleteProjectDetailsVMSerializer
    implements StructuredSerializer<CompleteProjectDetailsVM> {
  @override
  final Iterable<Type> types = const [
    CompleteProjectDetailsVM,
    _$CompleteProjectDetailsVM
  ];
  @override
  final String wireName = 'CompleteProjectDetailsVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CompleteProjectDetailsVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.isDone;
    if (value != null) {
      result
        ..add('isDone')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isLate;
    if (value != null) {
      result
        ..add('isLate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.plannedStart;
    if (value != null) {
      result
        ..add('plannedStart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.plannedDurationDays;
    if (value != null) {
      result
        ..add('plannedDurationDays')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.plannedEnd;
    if (value != null) {
      result
        ..add('plannedEnd')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.actualEnd;
    if (value != null) {
      result
        ..add('actualEnd')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dangerPercent;
    if (value != null) {
      result
        ..add('dangerPercent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.isAcceptedByEngManagementDirector;
    if (value != null) {
      result
        ..add('isAcceptedByEngManagementDirector')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.engManagementDirectorRefuseReason;
    if (value != null) {
      result
        ..add('engManagementDirectorRefuseReason')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRelations;
    if (value != null) {
      result
        ..add('userRelations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PerProjectUserRoleVM)])));
    }
    value = object.projectManager;
    if (value != null) {
      result
        ..add('projectManager')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserViewModel)));
    }
    value = object.ownerCompany;
    if (value != null) {
      result
        ..add('ownerCompany')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GovCompanyViewModel)));
    }
    value = object.consultingCenterRole;
    if (value != null) {
      result
        ..add('consultingCenterRole')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ConsultingCenterRoleEnum)));
    }
    value = object.creationDate;
    if (value != null) {
      result
        ..add('creationDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.projectCode;
    if (value != null) {
      result
        ..add('projectCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.governorate;
    if (value != null) {
      result
        ..add('governorate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GovsCitiesViewModelGov)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GovsCitiesViewModelCity)));
    }
    value = object.operationNumber;
    if (value != null) {
      result
        ..add('operationNumber')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.initialWarrantyDate;
    if (value != null) {
      result
        ..add('initialWarrantyDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(StartDurationDto)));
    }
    value = object.finalWarrantyDate;
    if (value != null) {
      result
        ..add('finalWarrantyDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(StartDurationDto)));
    }
    value = object.requesterInfo;
    if (value != null) {
      result
        ..add('requesterInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ProjectRequesterInfo)));
    }
    value = object.isSupervisedByEngManagementDirector;
    if (value != null) {
      result
        ..add('isSupervisedByEngManagementDirector')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isDirectSelectOfExecuter;
    if (value != null) {
      result
        ..add('isDirectSelectOfExecuter')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.projectExecuter;
    if (value != null) {
      result
        ..add('projectExecuter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ExecutionCompanyViewModel)));
    }
    value = object.executerSelectionDesc;
    if (value != null) {
      result
        ..add('executerSelectionDesc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentCommitteeId;
    if (value != null) {
      result
        ..add('currentCommitteeId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.committees;
    if (value != null) {
      result
        ..add('committees')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(ProjectAbstractCommitteeVM)])));
    }
    value = object.expectedCostInPounds;
    if (value != null) {
      result
        ..add('expectedCostInPounds')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.filePool;
    if (value != null) {
      result
        ..add('filePool')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AppFileViewModel)])));
    }
    value = object.taskDangerZones;
    if (value != null) {
      result
        ..add('taskDangerZones')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ColoredDangerZoneVM)])));
    }
    value = object.completePercentage;
    if (value != null) {
      result
        ..add('completePercentage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  CompleteProjectDetailsVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompleteProjectDetailsVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'isDone':
          result.isDone = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isLate':
          result.isLate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'plannedStart':
          result.plannedStart = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'plannedDurationDays':
          result.plannedDurationDays = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'plannedEnd':
          result.plannedEnd = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'actualEnd':
          result.actualEnd = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'dangerPercent':
          result.dangerPercent = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'isAcceptedByEngManagementDirector':
          result.isAcceptedByEngManagementDirector = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'engManagementDirectorRefuseReason':
          result.engManagementDirectorRefuseReason = serializers.deserialize(
              value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userRelations':
          result.userRelations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PerProjectUserRoleVM)]))
              as BuiltList<Object>);
          break;
        case 'projectManager':
          result.projectManager.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserViewModel)) as UserViewModel);
          break;
        case 'ownerCompany':
          result.ownerCompany.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GovCompanyViewModel))
              as GovCompanyViewModel);
          break;
        case 'consultingCenterRole':
          result.consultingCenterRole = serializers.deserialize(value,
                  specifiedType: const FullType(ConsultingCenterRoleEnum))
              as ConsultingCenterRoleEnum;
          break;
        case 'creationDate':
          result.creationDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'projectCode':
          result.projectCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'governorate':
          result.governorate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GovsCitiesViewModelGov))
              as GovsCitiesViewModelGov);
          break;
        case 'city':
          result.city.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GovsCitiesViewModelCity))
              as GovsCitiesViewModelCity);
          break;
        case 'operationNumber':
          result.operationNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'initialWarrantyDate':
          result.initialWarrantyDate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(StartDurationDto))
              as StartDurationDto);
          break;
        case 'finalWarrantyDate':
          result.finalWarrantyDate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(StartDurationDto))
              as StartDurationDto);
          break;
        case 'requesterInfo':
          result.requesterInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ProjectRequesterInfo))
              as ProjectRequesterInfo);
          break;
        case 'isSupervisedByEngManagementDirector':
          result.isSupervisedByEngManagementDirector = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'isDirectSelectOfExecuter':
          result.isDirectSelectOfExecuter = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'projectExecuter':
          result.projectExecuter.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ExecutionCompanyViewModel))
              as ExecutionCompanyViewModel);
          break;
        case 'executerSelectionDesc':
          result.executerSelectionDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currentCommitteeId':
          result.currentCommitteeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'committees':
          result.committees.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ProjectAbstractCommitteeVM)
              ])) as BuiltList<Object>);
          break;
        case 'expectedCostInPounds':
          result.expectedCostInPounds = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'filePool':
          result.filePool.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AppFileViewModel)]))
              as BuiltList<Object>);
          break;
        case 'taskDangerZones':
          result.taskDangerZones.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ColoredDangerZoneVM)]))
              as BuiltList<Object>);
          break;
        case 'completePercentage':
          result.completePercentage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$CompleteProjectDetailsVM extends CompleteProjectDetailsVM {
  @override
  final bool isDone;
  @override
  final bool isLate;
  @override
  final DateTime plannedStart;
  @override
  final int plannedDurationDays;
  @override
  final DateTime plannedEnd;
  @override
  final DateTime actualEnd;
  @override
  final double dangerPercent;
  @override
  final bool isAcceptedByEngManagementDirector;
  @override
  final String engManagementDirectorRefuseReason;
  @override
  final BuiltList<PerProjectUserRoleVM> userRelations;
  @override
  final UserViewModel projectManager;
  @override
  final GovCompanyViewModel ownerCompany;
  @override
  final ConsultingCenterRoleEnum consultingCenterRole;
  @override
  final DateTime creationDate;
  @override
  final String projectCode;
  @override
  final GovsCitiesViewModelGov governorate;
  @override
  final GovsCitiesViewModelCity city;
  @override
  final int operationNumber;
  @override
  final StartDurationDto initialWarrantyDate;
  @override
  final StartDurationDto finalWarrantyDate;
  @override
  final ProjectRequesterInfo requesterInfo;
  @override
  final bool isSupervisedByEngManagementDirector;
  @override
  final bool isDirectSelectOfExecuter;
  @override
  final ExecutionCompanyViewModel projectExecuter;
  @override
  final String executerSelectionDesc;
  @override
  final String currentCommitteeId;
  @override
  final BuiltList<ProjectAbstractCommitteeVM> committees;
  @override
  final double expectedCostInPounds;
  @override
  final BuiltList<AppFileViewModel> filePool;
  @override
  final BuiltList<ColoredDangerZoneVM> taskDangerZones;
  @override
  final double completePercentage;

  factory _$CompleteProjectDetailsVM(
          [void Function(CompleteProjectDetailsVMBuilder) updates]) =>
      (new CompleteProjectDetailsVMBuilder()..update(updates)).build();

  _$CompleteProjectDetailsVM._(
      {this.isDone,
      this.isLate,
      this.plannedStart,
      this.plannedDurationDays,
      this.plannedEnd,
      this.actualEnd,
      this.dangerPercent,
      this.isAcceptedByEngManagementDirector,
      this.engManagementDirectorRefuseReason,
      this.userRelations,
      this.projectManager,
      this.ownerCompany,
      this.consultingCenterRole,
      this.creationDate,
      this.projectCode,
      this.governorate,
      this.city,
      this.operationNumber,
      this.initialWarrantyDate,
      this.finalWarrantyDate,
      this.requesterInfo,
      this.isSupervisedByEngManagementDirector,
      this.isDirectSelectOfExecuter,
      this.projectExecuter,
      this.executerSelectionDesc,
      this.currentCommitteeId,
      this.committees,
      this.expectedCostInPounds,
      this.filePool,
      this.taskDangerZones,
      this.completePercentage})
      : super._();

  @override
  CompleteProjectDetailsVM rebuild(
          void Function(CompleteProjectDetailsVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompleteProjectDetailsVMBuilder toBuilder() =>
      new CompleteProjectDetailsVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompleteProjectDetailsVM &&
        isDone == other.isDone &&
        isLate == other.isLate &&
        plannedStart == other.plannedStart &&
        plannedDurationDays == other.plannedDurationDays &&
        plannedEnd == other.plannedEnd &&
        actualEnd == other.actualEnd &&
        dangerPercent == other.dangerPercent &&
        isAcceptedByEngManagementDirector ==
            other.isAcceptedByEngManagementDirector &&
        engManagementDirectorRefuseReason ==
            other.engManagementDirectorRefuseReason &&
        userRelations == other.userRelations &&
        projectManager == other.projectManager &&
        ownerCompany == other.ownerCompany &&
        consultingCenterRole == other.consultingCenterRole &&
        creationDate == other.creationDate &&
        projectCode == other.projectCode &&
        governorate == other.governorate &&
        city == other.city &&
        operationNumber == other.operationNumber &&
        initialWarrantyDate == other.initialWarrantyDate &&
        finalWarrantyDate == other.finalWarrantyDate &&
        requesterInfo == other.requesterInfo &&
        isSupervisedByEngManagementDirector ==
            other.isSupervisedByEngManagementDirector &&
        isDirectSelectOfExecuter == other.isDirectSelectOfExecuter &&
        projectExecuter == other.projectExecuter &&
        executerSelectionDesc == other.executerSelectionDesc &&
        currentCommitteeId == other.currentCommitteeId &&
        committees == other.committees &&
        expectedCostInPounds == other.expectedCostInPounds &&
        filePool == other.filePool &&
        taskDangerZones == other.taskDangerZones &&
        completePercentage == other.completePercentage;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, isDone.hashCode), isLate.hashCode), plannedStart.hashCode), plannedDurationDays.hashCode), plannedEnd.hashCode), actualEnd.hashCode), dangerPercent.hashCode), isAcceptedByEngManagementDirector.hashCode), engManagementDirectorRefuseReason.hashCode), userRelations.hashCode), projectManager.hashCode), ownerCompany.hashCode),
                                                                                consultingCenterRole.hashCode),
                                                                            creationDate.hashCode),
                                                                        projectCode.hashCode),
                                                                    governorate.hashCode),
                                                                city.hashCode),
                                                            operationNumber.hashCode),
                                                        initialWarrantyDate.hashCode),
                                                    finalWarrantyDate.hashCode),
                                                requesterInfo.hashCode),
                                            isSupervisedByEngManagementDirector.hashCode),
                                        isDirectSelectOfExecuter.hashCode),
                                    projectExecuter.hashCode),
                                executerSelectionDesc.hashCode),
                            currentCommitteeId.hashCode),
                        committees.hashCode),
                    expectedCostInPounds.hashCode),
                filePool.hashCode),
            taskDangerZones.hashCode),
        completePercentage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CompleteProjectDetailsVM')
          ..add('isDone', isDone)
          ..add('isLate', isLate)
          ..add('plannedStart', plannedStart)
          ..add('plannedDurationDays', plannedDurationDays)
          ..add('plannedEnd', plannedEnd)
          ..add('actualEnd', actualEnd)
          ..add('dangerPercent', dangerPercent)
          ..add('isAcceptedByEngManagementDirector',
              isAcceptedByEngManagementDirector)
          ..add('engManagementDirectorRefuseReason',
              engManagementDirectorRefuseReason)
          ..add('userRelations', userRelations)
          ..add('projectManager', projectManager)
          ..add('ownerCompany', ownerCompany)
          ..add('consultingCenterRole', consultingCenterRole)
          ..add('creationDate', creationDate)
          ..add('projectCode', projectCode)
          ..add('governorate', governorate)
          ..add('city', city)
          ..add('operationNumber', operationNumber)
          ..add('initialWarrantyDate', initialWarrantyDate)
          ..add('finalWarrantyDate', finalWarrantyDate)
          ..add('requesterInfo', requesterInfo)
          ..add('isSupervisedByEngManagementDirector',
              isSupervisedByEngManagementDirector)
          ..add('isDirectSelectOfExecuter', isDirectSelectOfExecuter)
          ..add('projectExecuter', projectExecuter)
          ..add('executerSelectionDesc', executerSelectionDesc)
          ..add('currentCommitteeId', currentCommitteeId)
          ..add('committees', committees)
          ..add('expectedCostInPounds', expectedCostInPounds)
          ..add('filePool', filePool)
          ..add('taskDangerZones', taskDangerZones)
          ..add('completePercentage', completePercentage))
        .toString();
  }
}

class CompleteProjectDetailsVMBuilder
    implements
        Builder<CompleteProjectDetailsVM, CompleteProjectDetailsVMBuilder> {
  _$CompleteProjectDetailsVM _$v;

  bool _isDone;
  bool get isDone => _$this._isDone;
  set isDone(bool isDone) => _$this._isDone = isDone;

  bool _isLate;
  bool get isLate => _$this._isLate;
  set isLate(bool isLate) => _$this._isLate = isLate;

  DateTime _plannedStart;
  DateTime get plannedStart => _$this._plannedStart;
  set plannedStart(DateTime plannedStart) =>
      _$this._plannedStart = plannedStart;

  int _plannedDurationDays;
  int get plannedDurationDays => _$this._plannedDurationDays;
  set plannedDurationDays(int plannedDurationDays) =>
      _$this._plannedDurationDays = plannedDurationDays;

  DateTime _plannedEnd;
  DateTime get plannedEnd => _$this._plannedEnd;
  set plannedEnd(DateTime plannedEnd) => _$this._plannedEnd = plannedEnd;

  DateTime _actualEnd;
  DateTime get actualEnd => _$this._actualEnd;
  set actualEnd(DateTime actualEnd) => _$this._actualEnd = actualEnd;

  double _dangerPercent;
  double get dangerPercent => _$this._dangerPercent;
  set dangerPercent(double dangerPercent) =>
      _$this._dangerPercent = dangerPercent;

  bool _isAcceptedByEngManagementDirector;
  bool get isAcceptedByEngManagementDirector =>
      _$this._isAcceptedByEngManagementDirector;
  set isAcceptedByEngManagementDirector(
          bool isAcceptedByEngManagementDirector) =>
      _$this._isAcceptedByEngManagementDirector =
          isAcceptedByEngManagementDirector;

  String _engManagementDirectorRefuseReason;
  String get engManagementDirectorRefuseReason =>
      _$this._engManagementDirectorRefuseReason;
  set engManagementDirectorRefuseReason(
          String engManagementDirectorRefuseReason) =>
      _$this._engManagementDirectorRefuseReason =
          engManagementDirectorRefuseReason;

  ListBuilder<PerProjectUserRoleVM> _userRelations;
  ListBuilder<PerProjectUserRoleVM> get userRelations =>
      _$this._userRelations ??= new ListBuilder<PerProjectUserRoleVM>();
  set userRelations(ListBuilder<PerProjectUserRoleVM> userRelations) =>
      _$this._userRelations = userRelations;

  UserViewModelBuilder _projectManager;
  UserViewModelBuilder get projectManager =>
      _$this._projectManager ??= new UserViewModelBuilder();
  set projectManager(UserViewModelBuilder projectManager) =>
      _$this._projectManager = projectManager;

  GovCompanyViewModelBuilder _ownerCompany;
  GovCompanyViewModelBuilder get ownerCompany =>
      _$this._ownerCompany ??= new GovCompanyViewModelBuilder();
  set ownerCompany(GovCompanyViewModelBuilder ownerCompany) =>
      _$this._ownerCompany = ownerCompany;

  ConsultingCenterRoleEnum _consultingCenterRole;
  ConsultingCenterRoleEnum get consultingCenterRole =>
      _$this._consultingCenterRole;
  set consultingCenterRole(ConsultingCenterRoleEnum consultingCenterRole) =>
      _$this._consultingCenterRole = consultingCenterRole;

  DateTime _creationDate;
  DateTime get creationDate => _$this._creationDate;
  set creationDate(DateTime creationDate) =>
      _$this._creationDate = creationDate;

  String _projectCode;
  String get projectCode => _$this._projectCode;
  set projectCode(String projectCode) => _$this._projectCode = projectCode;

  GovsCitiesViewModelGovBuilder _governorate;
  GovsCitiesViewModelGovBuilder get governorate =>
      _$this._governorate ??= new GovsCitiesViewModelGovBuilder();
  set governorate(GovsCitiesViewModelGovBuilder governorate) =>
      _$this._governorate = governorate;

  GovsCitiesViewModelCityBuilder _city;
  GovsCitiesViewModelCityBuilder get city =>
      _$this._city ??= new GovsCitiesViewModelCityBuilder();
  set city(GovsCitiesViewModelCityBuilder city) => _$this._city = city;

  int _operationNumber;
  int get operationNumber => _$this._operationNumber;
  set operationNumber(int operationNumber) =>
      _$this._operationNumber = operationNumber;

  StartDurationDtoBuilder _initialWarrantyDate;
  StartDurationDtoBuilder get initialWarrantyDate =>
      _$this._initialWarrantyDate ??= new StartDurationDtoBuilder();
  set initialWarrantyDate(StartDurationDtoBuilder initialWarrantyDate) =>
      _$this._initialWarrantyDate = initialWarrantyDate;

  StartDurationDtoBuilder _finalWarrantyDate;
  StartDurationDtoBuilder get finalWarrantyDate =>
      _$this._finalWarrantyDate ??= new StartDurationDtoBuilder();
  set finalWarrantyDate(StartDurationDtoBuilder finalWarrantyDate) =>
      _$this._finalWarrantyDate = finalWarrantyDate;

  ProjectRequesterInfoBuilder _requesterInfo;
  ProjectRequesterInfoBuilder get requesterInfo =>
      _$this._requesterInfo ??= new ProjectRequesterInfoBuilder();
  set requesterInfo(ProjectRequesterInfoBuilder requesterInfo) =>
      _$this._requesterInfo = requesterInfo;

  bool _isSupervisedByEngManagementDirector;
  bool get isSupervisedByEngManagementDirector =>
      _$this._isSupervisedByEngManagementDirector;
  set isSupervisedByEngManagementDirector(
          bool isSupervisedByEngManagementDirector) =>
      _$this._isSupervisedByEngManagementDirector =
          isSupervisedByEngManagementDirector;

  bool _isDirectSelectOfExecuter;
  bool get isDirectSelectOfExecuter => _$this._isDirectSelectOfExecuter;
  set isDirectSelectOfExecuter(bool isDirectSelectOfExecuter) =>
      _$this._isDirectSelectOfExecuter = isDirectSelectOfExecuter;

  ExecutionCompanyViewModelBuilder _projectExecuter;
  ExecutionCompanyViewModelBuilder get projectExecuter =>
      _$this._projectExecuter ??= new ExecutionCompanyViewModelBuilder();
  set projectExecuter(ExecutionCompanyViewModelBuilder projectExecuter) =>
      _$this._projectExecuter = projectExecuter;

  String _executerSelectionDesc;
  String get executerSelectionDesc => _$this._executerSelectionDesc;
  set executerSelectionDesc(String executerSelectionDesc) =>
      _$this._executerSelectionDesc = executerSelectionDesc;

  String _currentCommitteeId;
  String get currentCommitteeId => _$this._currentCommitteeId;
  set currentCommitteeId(String currentCommitteeId) =>
      _$this._currentCommitteeId = currentCommitteeId;

  ListBuilder<ProjectAbstractCommitteeVM> _committees;
  ListBuilder<ProjectAbstractCommitteeVM> get committees =>
      _$this._committees ??= new ListBuilder<ProjectAbstractCommitteeVM>();
  set committees(ListBuilder<ProjectAbstractCommitteeVM> committees) =>
      _$this._committees = committees;

  double _expectedCostInPounds;
  double get expectedCostInPounds => _$this._expectedCostInPounds;
  set expectedCostInPounds(double expectedCostInPounds) =>
      _$this._expectedCostInPounds = expectedCostInPounds;

  ListBuilder<AppFileViewModel> _filePool;
  ListBuilder<AppFileViewModel> get filePool =>
      _$this._filePool ??= new ListBuilder<AppFileViewModel>();
  set filePool(ListBuilder<AppFileViewModel> filePool) =>
      _$this._filePool = filePool;

  ListBuilder<ColoredDangerZoneVM> _taskDangerZones;
  ListBuilder<ColoredDangerZoneVM> get taskDangerZones =>
      _$this._taskDangerZones ??= new ListBuilder<ColoredDangerZoneVM>();
  set taskDangerZones(ListBuilder<ColoredDangerZoneVM> taskDangerZones) =>
      _$this._taskDangerZones = taskDangerZones;

  double _completePercentage;
  double get completePercentage => _$this._completePercentage;
  set completePercentage(double completePercentage) =>
      _$this._completePercentage = completePercentage;

  CompleteProjectDetailsVMBuilder() {
    CompleteProjectDetailsVM._initializeBuilder(this);
  }

  CompleteProjectDetailsVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isDone = $v.isDone;
      _isLate = $v.isLate;
      _plannedStart = $v.plannedStart;
      _plannedDurationDays = $v.plannedDurationDays;
      _plannedEnd = $v.plannedEnd;
      _actualEnd = $v.actualEnd;
      _dangerPercent = $v.dangerPercent;
      _isAcceptedByEngManagementDirector = $v.isAcceptedByEngManagementDirector;
      _engManagementDirectorRefuseReason = $v.engManagementDirectorRefuseReason;
      _userRelations = $v.userRelations?.toBuilder();
      _projectManager = $v.projectManager?.toBuilder();
      _ownerCompany = $v.ownerCompany?.toBuilder();
      _consultingCenterRole = $v.consultingCenterRole;
      _creationDate = $v.creationDate;
      _projectCode = $v.projectCode;
      _governorate = $v.governorate?.toBuilder();
      _city = $v.city?.toBuilder();
      _operationNumber = $v.operationNumber;
      _initialWarrantyDate = $v.initialWarrantyDate?.toBuilder();
      _finalWarrantyDate = $v.finalWarrantyDate?.toBuilder();
      _requesterInfo = $v.requesterInfo?.toBuilder();
      _isSupervisedByEngManagementDirector =
          $v.isSupervisedByEngManagementDirector;
      _isDirectSelectOfExecuter = $v.isDirectSelectOfExecuter;
      _projectExecuter = $v.projectExecuter?.toBuilder();
      _executerSelectionDesc = $v.executerSelectionDesc;
      _currentCommitteeId = $v.currentCommitteeId;
      _committees = $v.committees?.toBuilder();
      _expectedCostInPounds = $v.expectedCostInPounds;
      _filePool = $v.filePool?.toBuilder();
      _taskDangerZones = $v.taskDangerZones?.toBuilder();
      _completePercentage = $v.completePercentage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompleteProjectDetailsVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompleteProjectDetailsVM;
  }

  @override
  void update(void Function(CompleteProjectDetailsVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CompleteProjectDetailsVM build() {
    _$CompleteProjectDetailsVM _$result;
    try {
      _$result = _$v ??
          new _$CompleteProjectDetailsVM._(
              isDone: isDone,
              isLate: isLate,
              plannedStart: plannedStart,
              plannedDurationDays: plannedDurationDays,
              plannedEnd: plannedEnd,
              actualEnd: actualEnd,
              dangerPercent: dangerPercent,
              isAcceptedByEngManagementDirector:
                  isAcceptedByEngManagementDirector,
              engManagementDirectorRefuseReason:
                  engManagementDirectorRefuseReason,
              userRelations: _userRelations?.build(),
              projectManager: _projectManager?.build(),
              ownerCompany: _ownerCompany?.build(),
              consultingCenterRole: consultingCenterRole,
              creationDate: creationDate,
              projectCode: projectCode,
              governorate: _governorate?.build(),
              city: _city?.build(),
              operationNumber: operationNumber,
              initialWarrantyDate: _initialWarrantyDate?.build(),
              finalWarrantyDate: _finalWarrantyDate?.build(),
              requesterInfo: _requesterInfo?.build(),
              isSupervisedByEngManagementDirector:
                  isSupervisedByEngManagementDirector,
              isDirectSelectOfExecuter: isDirectSelectOfExecuter,
              projectExecuter: _projectExecuter?.build(),
              executerSelectionDesc: executerSelectionDesc,
              currentCommitteeId: currentCommitteeId,
              committees: _committees?.build(),
              expectedCostInPounds: expectedCostInPounds,
              filePool: _filePool?.build(),
              taskDangerZones: _taskDangerZones?.build(),
              completePercentage: completePercentage);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'userRelations';
        _userRelations?.build();
        _$failedField = 'projectManager';
        _projectManager?.build();
        _$failedField = 'ownerCompany';
        _ownerCompany?.build();

        _$failedField = 'governorate';
        _governorate?.build();
        _$failedField = 'city';
        _city?.build();

        _$failedField = 'initialWarrantyDate';
        _initialWarrantyDate?.build();
        _$failedField = 'finalWarrantyDate';
        _finalWarrantyDate?.build();
        _$failedField = 'requesterInfo';
        _requesterInfo?.build();

        _$failedField = 'projectExecuter';
        _projectExecuter?.build();

        _$failedField = 'committees';
        _committees?.build();

        _$failedField = 'filePool';
        _filePool?.build();
        _$failedField = 'taskDangerZones';
        _taskDangerZones?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CompleteProjectDetailsVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
