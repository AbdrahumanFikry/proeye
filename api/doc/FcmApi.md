# proeye_api.api.FcmApi

## Load the API package
```dart
import 'package:proeye_api/api.dart';
```

All URIs are relative to *https://proeye.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v10ApiFCMAssignTokenPost**](FcmApi.md#v10ApiFCMAssignTokenPost) | **post** /v1.0/Api/FCM/AssignToken | 
[**v10ApiFCMListTokensGet**](FcmApi.md#v10ApiFCMListTokensGet) | **get** /v1.0/Api/FCM/ListTokens | 
[**v10ApiFCMRemoveAllTokensDelete**](FcmApi.md#v10ApiFCMRemoveAllTokensDelete) | **delete** /v1.0/Api/FCM/RemoveAllTokens | 
[**v10ApiFCMRemoveTokenDelete**](FcmApi.md#v10ApiFCMRemoveTokenDelete) | **delete** /v1.0/Api/FCM/RemoveToken | 


# **v10ApiFCMAssignTokenPost**
> v10ApiFCMAssignTokenPost(token)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new FcmApi();
var token = token_example; // String | 

try { 
    api_instance.v10ApiFCMAssignTokenPost(token);
} catch (e) {
    print('Exception when calling FcmApi->v10ApiFCMAssignTokenPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiFCMListTokensGet**
> v10ApiFCMListTokensGet()



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new FcmApi();

try { 
    api_instance.v10ApiFCMListTokensGet();
} catch (e) {
    print('Exception when calling FcmApi->v10ApiFCMListTokensGet: $e\n');
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

# **v10ApiFCMRemoveAllTokensDelete**
> v10ApiFCMRemoveAllTokensDelete()



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new FcmApi();

try { 
    api_instance.v10ApiFCMRemoveAllTokensDelete();
} catch (e) {
    print('Exception when calling FcmApi->v10ApiFCMRemoveAllTokensDelete: $e\n');
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

# **v10ApiFCMRemoveTokenDelete**
> v10ApiFCMRemoveTokenDelete(token)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new FcmApi();
var token = token_example; // String | 

try { 
    api_instance.v10ApiFCMRemoveTokenDelete(token);
} catch (e) {
    print('Exception when calling FcmApi->v10ApiFCMRemoveTokenDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

