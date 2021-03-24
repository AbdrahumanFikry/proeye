# proeye_api.api.EngManagementDirectorApi

## Load the API package
```dart
import 'package:proeye_api/api.dart';
```

All URIs are relative to *https://proeye.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v10ApiEngManagementDirectorProjectsIdAcceptRequestPost**](EngManagementDirectorApi.md#v10ApiEngManagementDirectorProjectsIdAcceptRequestPost) | **post** /v1.0/Api/EngManagementDirector/Projects/{id}/AcceptRequest | Confirm Project Request for Eng Management Director 
[**v10ApiEngManagementDirectorProjectsIdEditRequestPost**](EngManagementDirectorApi.md#v10ApiEngManagementDirectorProjectsIdEditRequestPost) | **post** /v1.0/Api/EngManagementDirector/Projects/{id}/EditRequest | Edit Project Request for Eng Management Director 
[**v10ApiEngManagementDirectorProjectsIdRejectRequestPost**](EngManagementDirectorApi.md#v10ApiEngManagementDirectorProjectsIdRejectRequestPost) | **post** /v1.0/Api/EngManagementDirector/Projects/{id}/RejectRequest | Reject Project Request for Eng Management Director 
[**v10ApiEngManagementDirectorProjectsIdSpecifySupervisionStatusPost**](EngManagementDirectorApi.md#v10ApiEngManagementDirectorProjectsIdSpecifySupervisionStatusPost) | **post** /v1.0/Api/EngManagementDirector/Projects/{id}/SpecifySupervisionStatus | Specify if Eng Management Director is a supervisor
[**v10ApiEngManagementDirectorProjectsRequestsGet**](EngManagementDirectorApi.md#v10ApiEngManagementDirectorProjectsRequestsGet) | **get** /v1.0/Api/EngManagementDirector/Projects/Requests | get projects request
[**v10ApiEngManagementDirectorProjectsRequestsIdGet**](EngManagementDirectorApi.md#v10ApiEngManagementDirectorProjectsRequestsIdGet) | **get** /v1.0/Api/EngManagementDirector/Projects/Requests/{id} | get project request


# **v10ApiEngManagementDirectorProjectsIdAcceptRequestPost**
> v10ApiEngManagementDirectorProjectsIdAcceptRequestPost(id, isDirectSelection, executionCompanyId, executerSelectionDesc, officialRequestFiles)

Confirm Project Request for Eng Management Director 

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new EngManagementDirectorApi();
var id = id_example; // String | 
var isDirectSelection = true; // bool | 
var executionCompanyId = executionCompanyId_example; // String | 
var executerSelectionDesc = executerSelectionDesc_example; // String | 
var officialRequestFiles = [BINARY_DATA_HERE]; // BuiltList<MultipartFile> | 

try { 
    api_instance.v10ApiEngManagementDirectorProjectsIdAcceptRequestPost(id, isDirectSelection, executionCompanyId, executerSelectionDesc, officialRequestFiles);
} catch (e) {
    print('Exception when calling EngManagementDirectorApi->v10ApiEngManagementDirectorProjectsIdAcceptRequestPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **isDirectSelection** | **bool**|  | [optional] 
 **executionCompanyId** | **String**|  | [optional] 
 **executerSelectionDesc** | **String**|  | [optional] 
 **officialRequestFiles** | [**BuiltList<MultipartFile>**](MultipartFile.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiEngManagementDirectorProjectsIdEditRequestPost**
> v10ApiEngManagementDirectorProjectsIdEditRequestPost(id, cityId, govId, notes, projectDesc, projectName, projectOwnerCompanyId, requesterEmail, requesterLandline, requesterName, requesterPhone, requesterRelationToOwnerCompany, requesterRelationToOwnerCompanyDesc, oldFiles, officialRequestFiles)

Edit Project Request for Eng Management Director 

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new EngManagementDirectorApi();
var id = id_example; // String | 
var cityId = 56; // int | 
var govId = 56; // int | 
var notes = notes_example; // String | 
var projectDesc = projectDesc_example; // String | 
var projectName = projectName_example; // String | 
var projectOwnerCompanyId = projectOwnerCompanyId_example; // String | 
var requesterEmail = requesterEmail_example; // String | 
var requesterLandline = requesterLandline_example; // String | 
var requesterName = requesterName_example; // String | 
var requesterPhone = requesterPhone_example; // String | 
var requesterRelationToOwnerCompany = ; // CompanyUserRelationTypesEnum | 
var requesterRelationToOwnerCompanyDesc = requesterRelationToOwnerCompanyDesc_example; // String | 
var oldFiles = [oldFiles_example]; // BuiltList<String> | 
var officialRequestFiles = [BINARY_DATA_HERE]; // BuiltList<MultipartFile> | 

try { 
    api_instance.v10ApiEngManagementDirectorProjectsIdEditRequestPost(id, cityId, govId, notes, projectDesc, projectName, projectOwnerCompanyId, requesterEmail, requesterLandline, requesterName, requesterPhone, requesterRelationToOwnerCompany, requesterRelationToOwnerCompanyDesc, oldFiles, officialRequestFiles);
} catch (e) {
    print('Exception when calling EngManagementDirectorApi->v10ApiEngManagementDirectorProjectsIdEditRequestPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **cityId** | **int**|  | [optional] 
 **govId** | **int**|  | [optional] 
 **notes** | **String**|  | [optional] 
 **projectDesc** | **String**|  | [optional] 
 **projectName** | **String**|  | [optional] 
 **projectOwnerCompanyId** | **String**|  | [optional] 
 **requesterEmail** | **String**|  | [optional] 
 **requesterLandline** | **String**|  | [optional] 
 **requesterName** | **String**|  | [optional] 
 **requesterPhone** | **String**|  | [optional] 
 **requesterRelationToOwnerCompany** | [**CompanyUserRelationTypesEnum**](CompanyUserRelationTypesEnum.md)|  | [optional] 
 **requesterRelationToOwnerCompanyDesc** | **String**|  | [optional] 
 **oldFiles** | [**BuiltList<String>**](String.md)|  | [optional] 
 **officialRequestFiles** | [**BuiltList<MultipartFile>**](MultipartFile.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiEngManagementDirectorProjectsIdRejectRequestPost**
> v10ApiEngManagementDirectorProjectsIdRejectRequestPost(id, reviewNotes)

Reject Project Request for Eng Management Director 

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new EngManagementDirectorApi();
var id = id_example; // String | 
var reviewNotes = reviewNotes_example; // String | 

try { 
    api_instance.v10ApiEngManagementDirectorProjectsIdRejectRequestPost(id, reviewNotes);
} catch (e) {
    print('Exception when calling EngManagementDirectorApi->v10ApiEngManagementDirectorProjectsIdRejectRequestPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **reviewNotes** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiEngManagementDirectorProjectsIdSpecifySupervisionStatusPost**
> v10ApiEngManagementDirectorProjectsIdSpecifySupervisionStatusPost(id, isSupervisor)

Specify if Eng Management Director is a supervisor

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new EngManagementDirectorApi();
var id = id_example; // String | 
var isSupervisor = true; // bool | 

try { 
    api_instance.v10ApiEngManagementDirectorProjectsIdSpecifySupervisionStatusPost(id, isSupervisor);
} catch (e) {
    print('Exception when calling EngManagementDirectorApi->v10ApiEngManagementDirectorProjectsIdSpecifySupervisionStatusPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **isSupervisor** | **bool**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiEngManagementDirectorProjectsRequestsGet**
> BuiltList<ProjectNameId> v10ApiEngManagementDirectorProjectsRequestsGet()

get projects request

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new EngManagementDirectorApi();

try { 
    var result = api_instance.v10ApiEngManagementDirectorProjectsRequestsGet();
    print(result);
} catch (e) {
    print('Exception when calling EngManagementDirectorApi->v10ApiEngManagementDirectorProjectsRequestsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList<ProjectNameId>**](ProjectNameId.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiEngManagementDirectorProjectsRequestsIdGet**
> EngManagementDirectorSimpleProjectDetailsViewModel v10ApiEngManagementDirectorProjectsRequestsIdGet(id)

get project request

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new EngManagementDirectorApi();
var id = id_example; // String | 

try { 
    var result = api_instance.v10ApiEngManagementDirectorProjectsRequestsIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling EngManagementDirectorApi->v10ApiEngManagementDirectorProjectsRequestsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**EngManagementDirectorSimpleProjectDetailsViewModel**](EngManagementDirectorSimpleProjectDetailsViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

