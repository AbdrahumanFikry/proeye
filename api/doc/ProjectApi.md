# proeye_api.api.ProjectApi

## Load the API package
```dart
import 'package:proeye_api/api.dart';
```

All URIs are relative to *https://proeye.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v10ApiProjectsDeleteAllDelete**](ProjectApi.md#v10ApiProjectsDeleteAllDelete) | **delete** /v1.0/Api/Projects/DeleteAll | 
[**v10ApiProjectsGet**](ProjectApi.md#v10ApiProjectsGet) | **get** /v1.0/Api/Projects | 
[**v10ApiProjectsIdCommitteeCommitteeIdGet**](ProjectApi.md#v10ApiProjectsIdCommitteeCommitteeIdGet) | **get** /v1.0/Api/Projects/{id}/Committee/{committeeId} | 
[**v10ApiProjectsIdCommitteeCommitteeIdTeamIdTaskIdGet**](ProjectApi.md#v10ApiProjectsIdCommitteeCommitteeIdTeamIdTaskIdGet) | **get** /v1.0/Api/Projects/{id}/Committee/{committeeId}/{teamId}/{taskId} | 
[**v10ApiProjectsIdCommitteeIdTeamIdTaskIdAddCommentPost**](ProjectApi.md#v10ApiProjectsIdCommitteeIdTeamIdTaskIdAddCommentPost) | **post** /v1.0/Api/Projects/{id}/{committeeId}/{teamId}/{taskId}/AddComment | 
[**v10ApiProjectsIdGet**](ProjectApi.md#v10ApiProjectsIdGet) | **get** /v1.0/Api/Projects/{id} | 
[**v10ApiProjectsIdTransactionsGet**](ProjectApi.md#v10ApiProjectsIdTransactionsGet) | **get** /v1.0/Api/Projects/{id}/Transactions | 
[**v10ApiProjectsV1Post**](ProjectApi.md#v10ApiProjectsV1Post) | **post** /v1.0/Api/Projects/V1 | 


# **v10ApiProjectsDeleteAllDelete**
> v10ApiProjectsDeleteAllDelete()



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ProjectApi();

try { 
    api_instance.v10ApiProjectsDeleteAllDelete();
} catch (e) {
    print('Exception when calling ProjectApi->v10ApiProjectsDeleteAllDelete: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiProjectsGet**
> ProjectAbstractViewModelPaginatedResponse v10ApiProjectsGet(filterStr, isDone, pageIndex, pageSize, deniedOnly, warrantyStage)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ProjectApi();
var filterStr = filterStr_example; // String | 
var isDone = true; // bool | 
var pageIndex = 56; // int | 
var pageSize = 56; // int | 
var deniedOnly = true; // bool | 
var warrantyStage = ; // WarrantyStageFilterEnum | 

try { 
    var result = api_instance.v10ApiProjectsGet(filterStr, isDone, pageIndex, pageSize, deniedOnly, warrantyStage);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->v10ApiProjectsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterStr** | **String**|  | [optional] 
 **isDone** | **bool**|  | [optional] 
 **pageIndex** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 30]
 **deniedOnly** | **bool**|  | [optional] [default to false]
 **warrantyStage** | [**WarrantyStageFilterEnum**](.md)|  | [optional] 

### Return type

[**ProjectAbstractViewModelPaginatedResponse**](ProjectAbstractViewModelPaginatedResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiProjectsIdCommitteeCommitteeIdGet**
> ProjectCommitteeVM v10ApiProjectsIdCommitteeCommitteeIdGet(id, committeeId)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ProjectApi();
var id = id_example; // String | 
var committeeId = committeeId_example; // String | 

try { 
    var result = api_instance.v10ApiProjectsIdCommitteeCommitteeIdGet(id, committeeId);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->v10ApiProjectsIdCommitteeCommitteeIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **committeeId** | **String**|  | 

### Return type

[**ProjectCommitteeVM**](ProjectCommitteeVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiProjectsIdCommitteeCommitteeIdTeamIdTaskIdGet**
> ProjectTaskVM v10ApiProjectsIdCommitteeCommitteeIdTeamIdTaskIdGet(id, committeeId, teamId, taskId)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ProjectApi();
var id = id_example; // String | 
var committeeId = committeeId_example; // String | 
var teamId = teamId_example; // String | 
var taskId = taskId_example; // String | 

try { 
    var result = api_instance.v10ApiProjectsIdCommitteeCommitteeIdTeamIdTaskIdGet(id, committeeId, teamId, taskId);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->v10ApiProjectsIdCommitteeCommitteeIdTeamIdTaskIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **committeeId** | **String**|  | 
 **teamId** | **String**|  | 
 **taskId** | **String**|  | 

### Return type

[**ProjectTaskVM**](ProjectTaskVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiProjectsIdCommitteeIdTeamIdTaskIdAddCommentPost**
> v10ApiProjectsIdCommitteeIdTeamIdTaskIdAddCommentPost(id, committeeId, teamId, taskId, comment)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ProjectApi();
var id = id_example; // String | 
var committeeId = committeeId_example; // String | 
var teamId = teamId_example; // String | 
var taskId = taskId_example; // String | 
var comment = comment_example; // String | 

try { 
    api_instance.v10ApiProjectsIdCommitteeIdTeamIdTaskIdAddCommentPost(id, committeeId, teamId, taskId, comment);
} catch (e) {
    print('Exception when calling ProjectApi->v10ApiProjectsIdCommitteeIdTeamIdTaskIdAddCommentPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **committeeId** | **String**|  | 
 **teamId** | **String**|  | 
 **taskId** | **String**|  | 
 **comment** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiProjectsIdGet**
> CompleteProjectDetailsVM v10ApiProjectsIdGet(id)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ProjectApi();
var id = id_example; // String | 

try { 
    var result = api_instance.v10ApiProjectsIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->v10ApiProjectsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**CompleteProjectDetailsVM**](CompleteProjectDetailsVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiProjectsIdTransactionsGet**
> BuiltList<TransactionViewModel> v10ApiProjectsIdTransactionsGet(id)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ProjectApi();
var id = id_example; // String | 

try { 
    var result = api_instance.v10ApiProjectsIdTransactionsGet(id);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->v10ApiProjectsIdTransactionsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BuiltList<TransactionViewModel>**](TransactionViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiProjectsV1Post**
> StringDataWrapperVM v10ApiProjectsV1Post(projectName, projectOwnerCompanyId, cityId, govId, projectDesc, notes, requesterEmail, requesterName, requesterPhone, requesterLandline, requesterRelationToOwnerCompany, requesterRelationToOwnerCompanyDesc, officialRequestFiles)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ProjectApi();
var projectName = projectName_example; // String | 
var projectOwnerCompanyId = projectOwnerCompanyId_example; // String | 
var cityId = 56; // int | 
var govId = 56; // int | 
var projectDesc = projectDesc_example; // String | 
var notes = notes_example; // String | 
var requesterEmail = requesterEmail_example; // String | 
var requesterName = requesterName_example; // String | 
var requesterPhone = requesterPhone_example; // String | 
var requesterLandline = requesterLandline_example; // String | 
var requesterRelationToOwnerCompany = ; // CompanyUserRelationTypesEnum | 
var requesterRelationToOwnerCompanyDesc = requesterRelationToOwnerCompanyDesc_example; // String | 
var officialRequestFiles = [BINARY_DATA_HERE]; // BuiltList<MultipartFile> | 

try { 
    var result = api_instance.v10ApiProjectsV1Post(projectName, projectOwnerCompanyId, cityId, govId, projectDesc, notes, requesterEmail, requesterName, requesterPhone, requesterLandline, requesterRelationToOwnerCompany, requesterRelationToOwnerCompanyDesc, officialRequestFiles);
    print(result);
} catch (e) {
    print('Exception when calling ProjectApi->v10ApiProjectsV1Post: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectName** | **String**|  | 
 **projectOwnerCompanyId** | **String**|  | 
 **cityId** | **int**|  | 
 **govId** | **int**|  | 
 **projectDesc** | **String**|  | [optional] 
 **notes** | **String**|  | [optional] 
 **requesterEmail** | **String**|  | [optional] 
 **requesterName** | **String**|  | [optional] 
 **requesterPhone** | **String**|  | [optional] 
 **requesterLandline** | **String**|  | [optional] 
 **requesterRelationToOwnerCompany** | [**CompanyUserRelationTypesEnum**](CompanyUserRelationTypesEnum.md)|  | [optional] 
 **requesterRelationToOwnerCompanyDesc** | **String**|  | [optional] 
 **officialRequestFiles** | [**BuiltList<MultipartFile>**](MultipartFile.md)|  | [optional] 

### Return type

[**StringDataWrapperVM**](StringDataWrapperVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

