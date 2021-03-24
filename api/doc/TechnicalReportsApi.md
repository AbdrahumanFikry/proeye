# proeye_api.api.TechnicalReportsApi

## Load the API package
```dart
import 'package:proeye_api/api.dart';
```

All URIs are relative to *https://proeye.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v10ApiProjectsIdTechnicalReportsCreateReportPost**](TechnicalReportsApi.md#v10ApiProjectsIdTechnicalReportsCreateReportPost) | **post** /v1.0/Api/Projects/{id}/TechnicalReports/CreateReport | 
[**v10ApiProjectsIdTechnicalReportsGet**](TechnicalReportsApi.md#v10ApiProjectsIdTechnicalReportsGet) | **get** /v1.0/Api/Projects/{id}/TechnicalReports | 
[**v10ApiProjectsIdTechnicalReportsReportIdGet**](TechnicalReportsApi.md#v10ApiProjectsIdTechnicalReportsReportIdGet) | **get** /v1.0/Api/Projects/{id}/TechnicalReports/{reportId} | 


# **v10ApiProjectsIdTechnicalReportsCreateReportPost**
> TechnicalReportVM v10ApiProjectsIdTechnicalReportsCreateReportPost(id, desc, title, date, officialRequestFiles)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new TechnicalReportsApi();
var id = id_example; // String | 
var desc = desc_example; // String | 
var title = title_example; // String | 
var date = 2013-10-20T19:20:30+01:00; // DateTime | 
var officialRequestFiles = [BINARY_DATA_HERE]; // BuiltList<MultipartFile> | 

try { 
    var result = api_instance.v10ApiProjectsIdTechnicalReportsCreateReportPost(id, desc, title, date, officialRequestFiles);
    print(result);
} catch (e) {
    print('Exception when calling TechnicalReportsApi->v10ApiProjectsIdTechnicalReportsCreateReportPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **desc** | **String**|  | [optional] 
 **title** | **String**|  | [optional] 
 **date** | **DateTime**|  | [optional] 
 **officialRequestFiles** | [**BuiltList<MultipartFile>**](MultipartFile.md)|  | [optional] 

### Return type

[**TechnicalReportVM**](TechnicalReportVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiProjectsIdTechnicalReportsGet**
> TechnicalReportAbstractVMPaginatedResponse v10ApiProjectsIdTechnicalReportsGet(id, pageIndex, pageSize, filterStr)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new TechnicalReportsApi();
var id = id_example; // String | 
var pageIndex = 56; // int | 
var pageSize = 56; // int | 
var filterStr = filterStr_example; // String | 

try { 
    var result = api_instance.v10ApiProjectsIdTechnicalReportsGet(id, pageIndex, pageSize, filterStr);
    print(result);
} catch (e) {
    print('Exception when calling TechnicalReportsApi->v10ApiProjectsIdTechnicalReportsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **pageIndex** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 30]
 **filterStr** | **String**|  | [optional] 

### Return type

[**TechnicalReportAbstractVMPaginatedResponse**](TechnicalReportAbstractVMPaginatedResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiProjectsIdTechnicalReportsReportIdGet**
> TechnicalReportVM v10ApiProjectsIdTechnicalReportsReportIdGet(id, reportId)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new TechnicalReportsApi();
var id = id_example; // String | 
var reportId = reportId_example; // String | 

try { 
    var result = api_instance.v10ApiProjectsIdTechnicalReportsReportIdGet(id, reportId);
    print(result);
} catch (e) {
    print('Exception when calling TechnicalReportsApi->v10ApiProjectsIdTechnicalReportsReportIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **reportId** | **String**|  | 

### Return type

[**TechnicalReportVM**](TechnicalReportVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

