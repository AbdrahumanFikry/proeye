# proeye_api.model.ProjectTaskVM

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
**taskId** | **String** |  | [optional] 
**title** | **String** |  | [optional] 
**notes** | **String** |  | [optional] 
**isReceiveTask** | **bool** |  | [optional] 
**colorInfo** | [**ColoredDangerZoneVM**](ColoredDangerZoneVM.md) |  | [optional] 
**comments** | [**BuiltList<CommentVM>**](CommentVM.md) |  | [optional] 
**files** | [**BuiltList<AppFileViewModel>**](AppFileViewModel.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


