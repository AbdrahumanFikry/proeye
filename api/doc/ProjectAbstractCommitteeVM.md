# proeye_api.model.ProjectAbstractCommitteeVM

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
**committeeId** | **String** |  | [optional] 
**committeeName** | **String** |  | [optional] 
**committeeDirector** | [**UserViewModel**](UserViewModel.md) |  | [optional] 
**order** | **int** |  | [optional] 
**committeeType** | [**CommitteeTypeEnum**](CommitteeTypeEnum.md) |  | [optional] 
**taskDangerZones** | [**BuiltList<ColoredDangerZoneVM>**](ColoredDangerZoneVM.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


