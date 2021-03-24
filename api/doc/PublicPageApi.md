# proeye_api.api.PublicPageApi

## Load the API package
```dart
import 'package:proeye_api/api.dart';
```

All URIs are relative to *https://proeye.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v10ApiPublicPageActivitiesActivityIdCreateOrUpdateSectionPost**](PublicPageApi.md#v10ApiPublicPageActivitiesActivityIdCreateOrUpdateSectionPost) | **post** /v1.0/Api/PublicPage/Activities/{activityId}/CreateOrUpdateSection | 
[**v10ApiPublicPageActivitiesActivityIdDeleteActivityDelete**](PublicPageApi.md#v10ApiPublicPageActivitiesActivityIdDeleteActivityDelete) | **delete** /v1.0/Api/PublicPage/Activities/{activityId}/DeleteActivity | 
[**v10ApiPublicPageActivitiesActivityIdGet**](PublicPageApi.md#v10ApiPublicPageActivitiesActivityIdGet) | **get** /v1.0/Api/PublicPage/Activities/{activityId} | 
[**v10ApiPublicPageActivitiesActivityIdSectionIdCreateOrUpdatePostPost**](PublicPageApi.md#v10ApiPublicPageActivitiesActivityIdSectionIdCreateOrUpdatePostPost) | **post** /v1.0/Api/PublicPage/Activities/{activityId}/{sectionId}/CreateOrUpdatePost | 
[**v10ApiPublicPageActivitiesActivityIdSectionIdGet**](PublicPageApi.md#v10ApiPublicPageActivitiesActivityIdSectionIdGet) | **get** /v1.0/Api/PublicPage/Activities/{activityId}/{sectionId} | 
[**v10ApiPublicPageActivitiesCreateOrUpdateActivityPost**](PublicPageApi.md#v10ApiPublicPageActivitiesCreateOrUpdateActivityPost) | **post** /v1.0/Api/PublicPage/Activities/CreateOrUpdateActivity | 
[**v10ApiPublicPageActivitiesGet**](PublicPageApi.md#v10ApiPublicPageActivitiesGet) | **get** /v1.0/Api/PublicPage/Activities | 
[**v10ApiPublicPageGetContactUsGet**](PublicPageApi.md#v10ApiPublicPageGetContactUsGet) | **get** /v1.0/Api/PublicPage/GetContactUs | 
[**v10ApiPublicPageGetIntroductionGet**](PublicPageApi.md#v10ApiPublicPageGetIntroductionGet) | **get** /v1.0/Api/PublicPage/GetIntroduction | 
[**v10ApiPublicPageGetMainWorksGet**](PublicPageApi.md#v10ApiPublicPageGetMainWorksGet) | **get** /v1.0/Api/PublicPage/GetMainWorks | 
[**v10ApiPublicPageGetManagersGet**](PublicPageApi.md#v10ApiPublicPageGetManagersGet) | **get** /v1.0/Api/PublicPage/GetManagers | 
[**v10ApiPublicPagePostIdDeletePostDelete**](PublicPageApi.md#v10ApiPublicPagePostIdDeletePostDelete) | **delete** /v1.0/Api/PublicPage/{postId}/DeletePost | 
[**v10ApiPublicPageSectionIdDeleteSectionDelete**](PublicPageApi.md#v10ApiPublicPageSectionIdDeleteSectionDelete) | **delete** /v1.0/Api/PublicPage/{sectionId}/DeleteSection | 
[**v10ApiPublicPageSetContactUsPut**](PublicPageApi.md#v10ApiPublicPageSetContactUsPut) | **put** /v1.0/Api/PublicPage/SetContactUs | 
[**v10ApiPublicPageSetIntroductionPut**](PublicPageApi.md#v10ApiPublicPageSetIntroductionPut) | **put** /v1.0/Api/PublicPage/SetIntroduction | 
[**v10ApiPublicPageSetMainWorksPut**](PublicPageApi.md#v10ApiPublicPageSetMainWorksPut) | **put** /v1.0/Api/PublicPage/SetMainWorks | 
[**v10ApiPublicPageSetManagersPut**](PublicPageApi.md#v10ApiPublicPageSetManagersPut) | **put** /v1.0/Api/PublicPage/SetManagers | 


# **v10ApiPublicPageActivitiesActivityIdCreateOrUpdateSectionPost**
> AbstractGeneralSectionVM v10ApiPublicPageActivitiesActivityIdCreateOrUpdateSectionPost(activityId, sectionId, title)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();
var activityId = activityId_example; // String | 
var sectionId = sectionId_example; // String | 
var title = title_example; // String | 

try { 
    var result = api_instance.v10ApiPublicPageActivitiesActivityIdCreateOrUpdateSectionPost(activityId, sectionId, title);
    print(result);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPageActivitiesActivityIdCreateOrUpdateSectionPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**|  | 
 **sectionId** | **String**|  | [optional] 
 **title** | **String**|  | [optional] 

### Return type

[**AbstractGeneralSectionVM**](AbstractGeneralSectionVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiPublicPageActivitiesActivityIdDeleteActivityDelete**
> v10ApiPublicPageActivitiesActivityIdDeleteActivityDelete(activityId)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();
var activityId = activityId_example; // String | 

try { 
    api_instance.v10ApiPublicPageActivitiesActivityIdDeleteActivityDelete(activityId);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPageActivitiesActivityIdDeleteActivityDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiPublicPageActivitiesActivityIdGet**
> DetailedGeneralActivityVM v10ApiPublicPageActivitiesActivityIdGet(activityId)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();
var activityId = activityId_example; // String | 

try { 
    var result = api_instance.v10ApiPublicPageActivitiesActivityIdGet(activityId);
    print(result);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPageActivitiesActivityIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**|  | 

### Return type

[**DetailedGeneralActivityVM**](DetailedGeneralActivityVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiPublicPageActivitiesActivityIdSectionIdCreateOrUpdatePostPost**
> GeneralPostVM v10ApiPublicPageActivitiesActivityIdSectionIdCreateOrUpdatePostPost(activityId, sectionId, postId, title, desc, fullImageUrls)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();
var activityId = activityId_example; // String | 
var sectionId = sectionId_example; // String | 
var postId = postId_example; // String | 
var title = title_example; // String | 
var desc = desc_example; // String | 
var fullImageUrls = [fullImageUrls_example]; // BuiltList<String> | 

try { 
    var result = api_instance.v10ApiPublicPageActivitiesActivityIdSectionIdCreateOrUpdatePostPost(activityId, sectionId, postId, title, desc, fullImageUrls);
    print(result);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPageActivitiesActivityIdSectionIdCreateOrUpdatePostPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**|  | 
 **sectionId** | **String**|  | 
 **postId** | **String**|  | [optional] 
 **title** | **String**|  | [optional] 
 **desc** | **String**|  | [optional] 
 **fullImageUrls** | [**BuiltList<String>**](String.md)|  | [optional] 

### Return type

[**GeneralPostVM**](GeneralPostVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiPublicPageActivitiesActivityIdSectionIdGet**
> DetailedGeneralSectionVM v10ApiPublicPageActivitiesActivityIdSectionIdGet(activityId, sectionId)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();
var activityId = activityId_example; // String | 
var sectionId = sectionId_example; // String | 

try { 
    var result = api_instance.v10ApiPublicPageActivitiesActivityIdSectionIdGet(activityId, sectionId);
    print(result);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPageActivitiesActivityIdSectionIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**|  | 
 **sectionId** | **String**|  | 

### Return type

[**DetailedGeneralSectionVM**](DetailedGeneralSectionVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiPublicPageActivitiesCreateOrUpdateActivityPost**
> AbstractGeneralActivityVM v10ApiPublicPageActivitiesCreateOrUpdateActivityPost(activityId, title, fullImageUrl)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();
var activityId = activityId_example; // String | 
var title = title_example; // String | 
var fullImageUrl = fullImageUrl_example; // String | 

try { 
    var result = api_instance.v10ApiPublicPageActivitiesCreateOrUpdateActivityPost(activityId, title, fullImageUrl);
    print(result);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPageActivitiesCreateOrUpdateActivityPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **String**|  | [optional] 
 **title** | **String**|  | [optional] 
 **fullImageUrl** | **String**|  | [optional] 

### Return type

[**AbstractGeneralActivityVM**](AbstractGeneralActivityVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiPublicPageActivitiesGet**
> BuiltList<AbstractGeneralActivityVM> v10ApiPublicPageActivitiesGet()



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();

try { 
    var result = api_instance.v10ApiPublicPageActivitiesGet();
    print(result);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPageActivitiesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList<AbstractGeneralActivityVM>**](AbstractGeneralActivityVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiPublicPageGetContactUsGet**
> ContactUsVM v10ApiPublicPageGetContactUsGet()



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();

try { 
    var result = api_instance.v10ApiPublicPageGetContactUsGet();
    print(result);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPageGetContactUsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ContactUsVM**](ContactUsVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiPublicPageGetIntroductionGet**
> IntroductionVM v10ApiPublicPageGetIntroductionGet()



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();

try { 
    var result = api_instance.v10ApiPublicPageGetIntroductionGet();
    print(result);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPageGetIntroductionGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IntroductionVM**](IntroductionVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiPublicPageGetMainWorksGet**
> BuiltList<CenterMainWorkVM> v10ApiPublicPageGetMainWorksGet()



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();

try { 
    var result = api_instance.v10ApiPublicPageGetMainWorksGet();
    print(result);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPageGetMainWorksGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList<CenterMainWorkVM>**](CenterMainWorkVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiPublicPageGetManagersGet**
> BuiltList<ManagerVM> v10ApiPublicPageGetManagersGet()



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();

try { 
    var result = api_instance.v10ApiPublicPageGetManagersGet();
    print(result);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPageGetManagersGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList<ManagerVM>**](ManagerVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiPublicPagePostIdDeletePostDelete**
> v10ApiPublicPagePostIdDeletePostDelete(postId)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();
var postId = postId_example; // String | 

try { 
    api_instance.v10ApiPublicPagePostIdDeletePostDelete(postId);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPagePostIdDeletePostDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiPublicPageSectionIdDeleteSectionDelete**
> v10ApiPublicPageSectionIdDeleteSectionDelete(sectionId)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();
var sectionId = sectionId_example; // String | 

try { 
    api_instance.v10ApiPublicPageSectionIdDeleteSectionDelete(sectionId);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPageSectionIdDeleteSectionDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sectionId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiPublicPageSetContactUsPut**
> v10ApiPublicPageSetContactUsPut(contactUsVM)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();
var contactUsVM = new ContactUsVM(); // ContactUsVM | 

try { 
    api_instance.v10ApiPublicPageSetContactUsPut(contactUsVM);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPageSetContactUsPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contactUsVM** | [**ContactUsVM**](ContactUsVM.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiPublicPageSetIntroductionPut**
> v10ApiPublicPageSetIntroductionPut(introductionVM)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();
var introductionVM = new IntroductionVM(); // IntroductionVM | 

try { 
    api_instance.v10ApiPublicPageSetIntroductionPut(introductionVM);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPageSetIntroductionPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **introductionVM** | [**IntroductionVM**](IntroductionVM.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiPublicPageSetMainWorksPut**
> v10ApiPublicPageSetMainWorksPut(centerMainWorkVM)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();
var centerMainWorkVM = [new BuiltList<CenterMainWorkVM>()]; // BuiltList<CenterMainWorkVM> | 

try { 
    api_instance.v10ApiPublicPageSetMainWorksPut(centerMainWorkVM);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPageSetMainWorksPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **centerMainWorkVM** | [**BuiltList<CenterMainWorkVM>**](CenterMainWorkVM.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiPublicPageSetManagersPut**
> v10ApiPublicPageSetManagersPut(managerVM)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new PublicPageApi();
var managerVM = [new BuiltList<ManagerVM>()]; // BuiltList<ManagerVM> | 

try { 
    api_instance.v10ApiPublicPageSetManagersPut(managerVM);
} catch (e) {
    print('Exception when calling PublicPageApi->v10ApiPublicPageSetManagersPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **managerVM** | [**BuiltList<ManagerVM>**](ManagerVM.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

