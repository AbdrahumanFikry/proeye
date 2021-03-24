# proeye_api.api.ExtractsApi

## Load the API package
```dart
import 'package:proeye_api/api.dart';
```

All URIs are relative to *https://proeye.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v10ApiProjectsIdExtractsCreateExtractPost**](ExtractsApi.md#v10ApiProjectsIdExtractsCreateExtractPost) | **post** /v1.0/Api/Projects/{id}/Extracts/CreateExtract | 
[**v10ApiProjectsIdExtractsExtractIdGet**](ExtractsApi.md#v10ApiProjectsIdExtractsExtractIdGet) | **get** /v1.0/Api/Projects/{id}/Extracts/{extractId} | 
[**v10ApiProjectsIdExtractsExtractIdReviewPost**](ExtractsApi.md#v10ApiProjectsIdExtractsExtractIdReviewPost) | **post** /v1.0/Api/Projects/{id}/Extracts/{extractId}/Review | 
[**v10ApiProjectsIdExtractsGet**](ExtractsApi.md#v10ApiProjectsIdExtractsGet) | **get** /v1.0/Api/Projects/{id}/Extracts | 


# **v10ApiProjectsIdExtractsCreateExtractPost**
> ProjectExtractVM v10ApiProjectsIdExtractsCreateExtractPost(id, title, type, officialRequestFiles)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ExtractsApi();
var id = id_example; // String | 
var title = title_example; // String | 
var type = type_example; // String | 
var officialRequestFiles = [BINARY_DATA_HERE]; // BuiltList<MultipartFile> | 

try { 
    var result = api_instance.v10ApiProjectsIdExtractsCreateExtractPost(id, title, type, officialRequestFiles);
    print(result);
} catch (e) {
    print('Exception when calling ExtractsApi->v10ApiProjectsIdExtractsCreateExtractPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **title** | **String**|  | [optional] 
 **type** | **String**|  | [optional] 
 **officialRequestFiles** | [**BuiltList<MultipartFile>**](MultipartFile.md)|  | [optional] 

### Return type

[**ProjectExtractVM**](ProjectExtractVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiProjectsIdExtractsExtractIdGet**
> ProjectExtractVM v10ApiProjectsIdExtractsExtractIdGet(id, extractId)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ExtractsApi();
var id = id_example; // String | 
var extractId = extractId_example; // String | 

try { 
    var result = api_instance.v10ApiProjectsIdExtractsExtractIdGet(id, extractId);
    print(result);
} catch (e) {
    print('Exception when calling ExtractsApi->v10ApiProjectsIdExtractsExtractIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **extractId** | **String**|  | 

### Return type

[**ProjectExtractVM**](ProjectExtractVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiProjectsIdExtractsExtractIdReviewPost**
> v10ApiProjectsIdExtractsExtractIdReviewPost(id, extractId, isAccepted, reviewDesc, officialRequestFiles)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ExtractsApi();
var id = id_example; // String | 
var extractId = extractId_example; // String | 
var isAccepted = true; // bool | 
var reviewDesc = reviewDesc_example; // String | 
var officialRequestFiles = [BINARY_DATA_HERE]; // BuiltList<MultipartFile> | 

try { 
    api_instance.v10ApiProjectsIdExtractsExtractIdReviewPost(id, extractId, isAccepted, reviewDesc, officialRequestFiles);
} catch (e) {
    print('Exception when calling ExtractsApi->v10ApiProjectsIdExtractsExtractIdReviewPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **extractId** | **String**|  | 
 **isAccepted** | **bool**|  | [optional] 
 **reviewDesc** | **String**|  | [optional] 
 **officialRequestFiles** | [**BuiltList<MultipartFile>**](MultipartFile.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiProjectsIdExtractsGet**
> ProjectExtractAbstractVMPaginatedResponse v10ApiProjectsIdExtractsGet(id, pageIndex, pageSize, filterStr, isIncomingOnly)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ExtractsApi();
var id = id_example; // String | 
var pageIndex = 56; // int | 
var pageSize = 56; // int | 
var filterStr = filterStr_example; // String | 
var isIncomingOnly = true; // bool | 

try { 
    var result = api_instance.v10ApiProjectsIdExtractsGet(id, pageIndex, pageSize, filterStr, isIncomingOnly);
    print(result);
} catch (e) {
    print('Exception when calling ExtractsApi->v10ApiProjectsIdExtractsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **pageIndex** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 30]
 **filterStr** | **String**|  | [optional] 
 **isIncomingOnly** | **bool**|  | [optional] 

### Return type

[**ProjectExtractAbstractVMPaginatedResponse**](ProjectExtractAbstractVMPaginatedResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

