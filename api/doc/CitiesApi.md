# proeye_api.api.CitiesApi

## Load the API package
```dart
import 'package:proeye_api/api.dart';
```

All URIs are relative to *https://proeye.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v10ApiGovsGet**](CitiesApi.md#v10ApiGovsGet) | **get** /v1.0/Api/Govs | Get Governorates, Anonymous Usage
[**v10ApiGovsIdCitiesGet**](CitiesApi.md#v10ApiGovsIdCitiesGet) | **get** /v1.0/Api/Govs/{id}/Cities | Get Cities, Anonymous Usage
[**v10ApiGovsSeedCitiesFromLocalCsvPut**](CitiesApi.md#v10ApiGovsSeedCitiesFromLocalCsvPut) | **put** /v1.0/Api/Govs/SeedCitiesFromLocalCsv | Seed Cities From Local Csv ,, system admin Required


# **v10ApiGovsGet**
> BuiltList<GovsCitiesViewModelGov> v10ApiGovsGet(searchParam)

Get Governorates, Anonymous Usage

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CitiesApi();
var searchParam = searchParam_example; // String | 

try { 
    var result = api_instance.v10ApiGovsGet(searchParam);
    print(result);
} catch (e) {
    print('Exception when calling CitiesApi->v10ApiGovsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchParam** | **String**|  | [optional] 

### Return type

[**BuiltList<GovsCitiesViewModelGov>**](GovsCitiesViewModelGov.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiGovsIdCitiesGet**
> BuiltList<GovsCitiesViewModelCity> v10ApiGovsIdCitiesGet(id)

Get Cities, Anonymous Usage

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CitiesApi();
var id = 56; // int | 

try { 
    var result = api_instance.v10ApiGovsIdCitiesGet(id);
    print(result);
} catch (e) {
    print('Exception when calling CitiesApi->v10ApiGovsIdCitiesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**BuiltList<GovsCitiesViewModelCity>**](GovsCitiesViewModelCity.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiGovsSeedCitiesFromLocalCsvPut**
> v10ApiGovsSeedCitiesFromLocalCsvPut()

Seed Cities From Local Csv ,, system admin Required

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CitiesApi();

try { 
    api_instance.v10ApiGovsSeedCitiesFromLocalCsvPut();
} catch (e) {
    print('Exception when calling CitiesApi->v10ApiGovsSeedCitiesFromLocalCsvPut: $e\n');
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

