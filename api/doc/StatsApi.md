# proeye_api.api.StatsApi

## Load the API package
```dart
import 'package:proeye_api/api.dart';
```

All URIs are relative to *https://proeye.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v10ApiGetProjectsStatsGet**](StatsApi.md#v10ApiGetProjectsStatsGet) | **get** /v1.0/Api/GetProjectsStats | 


# **v10ApiGetProjectsStatsGet**
> StatsObject v10ApiGetProjectsStatsGet()



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new StatsApi();

try { 
    var result = api_instance.v10ApiGetProjectsStatsGet();
    print(result);
} catch (e) {
    print('Exception when calling StatsApi->v10ApiGetProjectsStatsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**StatsObject**](StatsObject.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

