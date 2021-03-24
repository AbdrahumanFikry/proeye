# proeye_api.model.ProjectTeamVM

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
**teamId** | **String** |  | [optional] 
**teamName** | **String** |  | [optional] 
**tasks** | [**BuiltList<ProjectAbstractTaskVM>**](ProjectAbstractTaskVM.md) |  | [optional] 
**members** | [**BuiltList<UserViewModel>**](UserViewModel.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


