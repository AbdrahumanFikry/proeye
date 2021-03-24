# proeye_api.api.CommitteeLeaderApi

## Load the API package
```dart
import 'package:proeye_api/api.dart';
```

All URIs are relative to *https://proeye.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdAddTaskPost**](CommitteeLeaderApi.md#v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdAddTaskPost) | **post** /v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/{teamId}/AddTask | 
[**v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdCompleteTaskPut**](CommitteeLeaderApi.md#v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdCompleteTaskPut) | **put** /v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/{teamId}/{taskId}/CompleteTask | 
[**v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdDeleteTaskDelete**](CommitteeLeaderApi.md#v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdDeleteTaskDelete) | **delete** /v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/{teamId}/{taskId}/DeleteTask | 
[**v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdUpdateTaskPut**](CommitteeLeaderApi.md#v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdUpdateTaskPut) | **put** /v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/{teamId}/{taskId}/UpdateTask | 
[**v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdUpdateMembersPost**](CommitteeLeaderApi.md#v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdUpdateMembersPost) | **post** /v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/{teamId}/UpdateMembers | 
[**v10ApiCommitteeLeaderProjectIdCommitteeIdUpdateTeamsPost**](CommitteeLeaderApi.md#v10ApiCommitteeLeaderProjectIdCommitteeIdUpdateTeamsPost) | **post** /v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/UpdateTeams | 


# **v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdAddTaskPost**
> v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdAddTaskPost(projectId, committeeId, teamId, reqCreateTaskVM)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CommitteeLeaderApi();
var projectId = projectId_example; // String | 
var committeeId = committeeId_example; // String | 
var teamId = teamId_example; // String | 
var reqCreateTaskVM = new ReqCreateTaskVM(); // ReqCreateTaskVM | 

try { 
    api_instance.v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdAddTaskPost(projectId, committeeId, teamId, reqCreateTaskVM);
} catch (e) {
    print('Exception when calling CommitteeLeaderApi->v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdAddTaskPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **committeeId** | **String**|  | 
 **teamId** | **String**|  | 
 **reqCreateTaskVM** | [**ReqCreateTaskVM**](ReqCreateTaskVM.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdCompleteTaskPut**
> v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdCompleteTaskPut(projectId, committeeId, teamId, taskId, reqCompleteTask)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CommitteeLeaderApi();
var projectId = projectId_example; // String | 
var committeeId = committeeId_example; // String | 
var teamId = teamId_example; // String | 
var taskId = taskId_example; // String | 
var reqCompleteTask = new ReqCompleteTask(); // ReqCompleteTask | 

try { 
    api_instance.v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdCompleteTaskPut(projectId, committeeId, teamId, taskId, reqCompleteTask);
} catch (e) {
    print('Exception when calling CommitteeLeaderApi->v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdCompleteTaskPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **committeeId** | **String**|  | 
 **teamId** | **String**|  | 
 **taskId** | **String**|  | 
 **reqCompleteTask** | [**ReqCompleteTask**](ReqCompleteTask.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdDeleteTaskDelete**
> v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdDeleteTaskDelete(projectId, committeeId, teamId, taskId)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CommitteeLeaderApi();
var projectId = projectId_example; // String | 
var committeeId = committeeId_example; // String | 
var teamId = teamId_example; // String | 
var taskId = taskId_example; // String | 

try { 
    api_instance.v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdDeleteTaskDelete(projectId, committeeId, teamId, taskId);
} catch (e) {
    print('Exception when calling CommitteeLeaderApi->v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdDeleteTaskDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **committeeId** | **String**|  | 
 **teamId** | **String**|  | 
 **taskId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdUpdateTaskPut**
> v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdUpdateTaskPut(projectId, committeeId, teamId, taskId, reqUpdateTaskVM)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CommitteeLeaderApi();
var projectId = projectId_example; // String | 
var committeeId = committeeId_example; // String | 
var teamId = teamId_example; // String | 
var taskId = taskId_example; // String | 
var reqUpdateTaskVM = new ReqUpdateTaskVM(); // ReqUpdateTaskVM | 

try { 
    api_instance.v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdUpdateTaskPut(projectId, committeeId, teamId, taskId, reqUpdateTaskVM);
} catch (e) {
    print('Exception when calling CommitteeLeaderApi->v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdUpdateTaskPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **committeeId** | **String**|  | 
 **teamId** | **String**|  | 
 **taskId** | **String**|  | 
 **reqUpdateTaskVM** | [**ReqUpdateTaskVM**](ReqUpdateTaskVM.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdUpdateMembersPost**
> v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdUpdateMembersPost(projectId, committeeId, teamId, requestBody)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CommitteeLeaderApi();
var projectId = projectId_example; // String | 
var committeeId = committeeId_example; // String | 
var teamId = teamId_example; // String | 
var requestBody = [new BuiltList<String>()]; // BuiltList<String> | 

try { 
    api_instance.v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdUpdateMembersPost(projectId, committeeId, teamId, requestBody);
} catch (e) {
    print('Exception when calling CommitteeLeaderApi->v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdUpdateMembersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **committeeId** | **String**|  | 
 **teamId** | **String**|  | 
 **requestBody** | [**BuiltList<String>**](String.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiCommitteeLeaderProjectIdCommitteeIdUpdateTeamsPost**
> v10ApiCommitteeLeaderProjectIdCommitteeIdUpdateTeamsPost(projectId, committeeId, reqChangeCommitteeTeam)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CommitteeLeaderApi();
var projectId = projectId_example; // String | 
var committeeId = committeeId_example; // String | 
var reqChangeCommitteeTeam = new ReqChangeCommitteeTeam(); // ReqChangeCommitteeTeam | 

try { 
    api_instance.v10ApiCommitteeLeaderProjectIdCommitteeIdUpdateTeamsPost(projectId, committeeId, reqChangeCommitteeTeam);
} catch (e) {
    print('Exception when calling CommitteeLeaderApi->v10ApiCommitteeLeaderProjectIdCommitteeIdUpdateTeamsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **committeeId** | **String**|  | 
 **reqChangeCommitteeTeam** | [**ReqChangeCommitteeTeam**](ReqChangeCommitteeTeam.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

