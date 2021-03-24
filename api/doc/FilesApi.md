# proeye_api.api.FilesApi

## Load the API package
```dart
import 'package:proeye_api/api.dart';
```

All URIs are relative to *https://proeye.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v10ApiFilesPost**](FilesApi.md#v10ApiFilesPost) | **post** /v1.0/Api/Files | 


# **v10ApiFilesPost**
> BuiltList<AppFileViewModel> v10ApiFilesPost(files)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new FilesApi();
var files = [BINARY_DATA_HERE]; // BuiltList<MultipartFile> | 

try { 
    var result = api_instance.v10ApiFilesPost(files);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->v10ApiFilesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **files** | [**BuiltList<MultipartFile>**](MultipartFile.md)|  | [optional] 

### Return type

[**BuiltList<AppFileViewModel>**](AppFileViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

