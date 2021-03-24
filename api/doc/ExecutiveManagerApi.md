# proeye_api.api.ExecutiveManagerApi

## Load the API package
```dart
import 'package:proeye_api/api.dart';
```

All URIs are relative to *https://proeye.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v10ApiExecutionManagerProjectsIdCompleteRequestPost**](ExecutiveManagerApi.md#v10ApiExecutionManagerProjectsIdCompleteRequestPost) | **post** /v1.0/Api/ExecutionManager/Projects/{id}/CompleteRequest | Complete a project requests for Execution manager
[**v10ApiExecutionManagerProjectsIdCreateOrUpdateReceiveCommitteePost**](ExecutiveManagerApi.md#v10ApiExecutionManagerProjectsIdCreateOrUpdateReceiveCommitteePost) | **post** /v1.0/Api/ExecutionManager/Projects/{id}/CreateOrUpdateReceiveCommittee | Creates or updates receive committee for Execution manager
[**v10ApiExecutionManagerProjectsIdEditInfoPost**](ExecutiveManagerApi.md#v10ApiExecutionManagerProjectsIdEditInfoPost) | **post** /v1.0/Api/ExecutionManager/Projects/{id}/EditInfo | Edit project info for ExecutiveManager
[**v10ApiExecutionManagerProjectsIdGeneralEditProjectPost**](ExecutiveManagerApi.md#v10ApiExecutionManagerProjectsIdGeneralEditProjectPost) | **post** /v1.0/Api/ExecutionManager/Projects/{id}/GeneralEditProject | Edit project info, for devs only
[**v10ApiExecutionManagerProjectsRequestsGet**](ExecutiveManagerApi.md#v10ApiExecutionManagerProjectsRequestsGet) | **get** /v1.0/Api/ExecutionManager/Projects/Requests | Get project requests for Execution manager
[**v10ApiExecutionManagerProjectsRequestsIdGet**](ExecutiveManagerApi.md#v10ApiExecutionManagerProjectsRequestsIdGet) | **get** /v1.0/Api/ExecutionManager/Projects/Requests/{id} | Get single project request for Execution manager


# **v10ApiExecutionManagerProjectsIdCompleteRequestPost**
> v10ApiExecutionManagerProjectsIdCompleteRequestPost(id, reqExecutiveManagerCompleteProjectRequestViewModel)

Complete a project requests for Execution manager

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ExecutiveManagerApi();
var id = id_example; // String | 
var reqExecutiveManagerCompleteProjectRequestViewModel = new ReqExecutiveManagerCompleteProjectRequestViewModel(); // ReqExecutiveManagerCompleteProjectRequestViewModel | 

try { 
    api_instance.v10ApiExecutionManagerProjectsIdCompleteRequestPost(id, reqExecutiveManagerCompleteProjectRequestViewModel);
} catch (e) {
    print('Exception when calling ExecutiveManagerApi->v10ApiExecutionManagerProjectsIdCompleteRequestPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **reqExecutiveManagerCompleteProjectRequestViewModel** | [**ReqExecutiveManagerCompleteProjectRequestViewModel**](ReqExecutiveManagerCompleteProjectRequestViewModel.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiExecutionManagerProjectsIdCreateOrUpdateReceiveCommitteePost**
> v10ApiExecutionManagerProjectsIdCreateOrUpdateReceiveCommitteePost(id, reqReceiveCommitteeVM)

Creates or updates receive committee for Execution manager

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ExecutiveManagerApi();
var id = id_example; // String | 
var reqReceiveCommitteeVM = new ReqReceiveCommitteeVM(); // ReqReceiveCommitteeVM | 

try { 
    api_instance.v10ApiExecutionManagerProjectsIdCreateOrUpdateReceiveCommitteePost(id, reqReceiveCommitteeVM);
} catch (e) {
    print('Exception when calling ExecutiveManagerApi->v10ApiExecutionManagerProjectsIdCreateOrUpdateReceiveCommitteePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **reqReceiveCommitteeVM** | [**ReqReceiveCommitteeVM**](ReqReceiveCommitteeVM.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiExecutionManagerProjectsIdEditInfoPost**
> v10ApiExecutionManagerProjectsIdEditInfoPost(id, reqExecutiveManagerEditProjectRequestViewModel)

Edit project info for ExecutiveManager

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ExecutiveManagerApi();
var id = id_example; // String | 
var reqExecutiveManagerEditProjectRequestViewModel = new ReqExecutiveManagerEditProjectRequestViewModel(); // ReqExecutiveManagerEditProjectRequestViewModel | 

try { 
    api_instance.v10ApiExecutionManagerProjectsIdEditInfoPost(id, reqExecutiveManagerEditProjectRequestViewModel);
} catch (e) {
    print('Exception when calling ExecutiveManagerApi->v10ApiExecutionManagerProjectsIdEditInfoPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **reqExecutiveManagerEditProjectRequestViewModel** | [**ReqExecutiveManagerEditProjectRequestViewModel**](ReqExecutiveManagerEditProjectRequestViewModel.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiExecutionManagerProjectsIdGeneralEditProjectPost**
> v10ApiExecutionManagerProjectsIdGeneralEditProjectPost(id, reqEditProjectInfo)

Edit project info, for devs only

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ExecutiveManagerApi();
var id = id_example; // String | 
var reqEditProjectInfo = new ReqEditProjectInfo(); // ReqEditProjectInfo | 

try { 
    api_instance.v10ApiExecutionManagerProjectsIdGeneralEditProjectPost(id, reqEditProjectInfo);
} catch (e) {
    print('Exception when calling ExecutiveManagerApi->v10ApiExecutionManagerProjectsIdGeneralEditProjectPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **reqEditProjectInfo** | [**ReqEditProjectInfo**](ReqEditProjectInfo.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiExecutionManagerProjectsRequestsGet**
> BuiltList<ProjectNameId> v10ApiExecutionManagerProjectsRequestsGet()

Get project requests for Execution manager

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ExecutiveManagerApi();

try { 
    var result = api_instance.v10ApiExecutionManagerProjectsRequestsGet();
    print(result);
} catch (e) {
    print('Exception when calling ExecutiveManagerApi->v10ApiExecutionManagerProjectsRequestsGet: $e\n');
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

# **v10ApiExecutionManagerProjectsRequestsIdGet**
> ExecutiveManagerSimpleProjectDetailsViewModel v10ApiExecutionManagerProjectsRequestsIdGet(id)

Get single project request for Execution manager

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ExecutiveManagerApi();
var id = id_example; // String | 

try { 
    var result = api_instance.v10ApiExecutionManagerProjectsRequestsIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling ExecutiveManagerApi->v10ApiExecutionManagerProjectsRequestsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ExecutiveManagerSimpleProjectDetailsViewModel**](ExecutiveManagerSimpleProjectDetailsViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

