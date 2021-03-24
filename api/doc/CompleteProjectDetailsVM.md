# proeye_api.model.CompleteProjectDetailsVM

## Load the model package
```dart
import 'package:proeye_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isDone** | **bool** |  | [optional] 
**isLate** | **bool** |  | [optional] 
**plannedStart** | [**DateTime**](DateTime.md) |  | [optional] 
**plannedDurationDays** | **int** |  | [optional] 
**plannedEnd** | [**DateTime**](DateTime.md) |  | [optional] 
**actualEnd** | [**DateTime**](DateTime.md) |  | [optional] 
**dangerPercent** | **double** |  | [optional] 
**isAcceptedByEngManagementDirector** | **bool** |  | [optional] 
**engManagementDirectorRefuseReason** | **String** |  | [optional] 
**userRelations** | [**BuiltList<PerProjectUserRoleVM>**](PerProjectUserRoleVM.md) |  | [optional] 
**projectManager** | [**UserViewModel**](UserViewModel.md) |  | [optional] 
**ownerCompany** | [**GovCompanyViewModel**](GovCompanyViewModel.md) |  | [optional] 
**consultingCenterRole** | [**ConsultingCenterRoleEnum**](ConsultingCenterRoleEnum.md) |  | [optional] 
**creationDate** | [**DateTime**](DateTime.md) |  | [optional] 
**projectCode** | **String** |  | [optional] 
**governorate** | [**GovsCitiesViewModelGov**](GovsCitiesViewModelGov.md) |  | [optional] 
**city** | [**GovsCitiesViewModelCity**](GovsCitiesViewModelCity.md) |  | [optional] 
**operationNumber** | **int** |  | [optional] 
**initialWarrantyDate** | [**StartDurationDto**](StartDurationDto.md) |  | [optional] 
**finalWarrantyDate** | [**StartDurationDto**](StartDurationDto.md) |  | [optional] 
**requesterInfo** | [**ProjectRequesterInfo**](ProjectRequesterInfo.md) |  | [optional] 
**isSupervisedByEngManagementDirector** | **bool** |  | [optional] 
**isDirectSelectOfExecuter** | **bool** |  | [optional] 
**projectExecuter** | [**ExecutionCompanyViewModel**](ExecutionCompanyViewModel.md) |  | [optional] 
**executerSelectionDesc** | **String** |  | [optional] 
**currentCommitteeId** | **String** |  | [optional] 
**committees** | [**BuiltList<ProjectAbstractCommitteeVM>**](ProjectAbstractCommitteeVM.md) |  | [optional] 
**expectedCostInPounds** | **double** |  | [optional] 
**filePool** | [**BuiltList<AppFileViewModel>**](AppFileViewModel.md) |  | [optional] 
**taskDangerZones** | [**BuiltList<ColoredDangerZoneVM>**](ColoredDangerZoneVM.md) |  | [optional] 
**completePercentage** | **double** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


