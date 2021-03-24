# proeye_api.api.CompaniesApi

## Load the API package
```dart
import 'package:proeye_api/api.dart';
```

All URIs are relative to *https://proeye.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activitiesGet**](CompaniesApi.md#activitiesGet) | **get** /Activities | Get Activities ,, Anonymous Usage
[**activitiesIdActivatePut**](CompaniesApi.md#activitiesIdActivatePut) | **put** /Activities/{id}/Activate | Activate a deleted Activity,, Sys Admin Require
[**activitiesIdDelete**](CompaniesApi.md#activitiesIdDelete) | **delete** /Activities/{id} | Delete Activities ,, Sys Admin Require
[**activitiesIdPut**](CompaniesApi.md#activitiesIdPut) | **put** /Activities/{id} | Update Activity ,, SysAdminRequire
[**activitiesPost**](CompaniesApi.md#activitiesPost) | **post** /Activities | Create an activity,,  Require System Admin
[**sectionsGet**](CompaniesApi.md#sectionsGet) | **get** /Sections | Get sections ,, Anonymous Usage
[**sectionsIdActivatePut**](CompaniesApi.md#sectionsIdActivatePut) | **put** /Sections/{id}/Activate | Activate a deleted section,, Sys Admin Require
[**sectionsIdDelete**](CompaniesApi.md#sectionsIdDelete) | **delete** /Sections/{id} | Delete Sections ,, Anonymous Usage
[**sectionsIdPut**](CompaniesApi.md#sectionsIdPut) | **put** /Sections/{id} | Update Section ,, Anonymous Usage
[**sectionsPost**](CompaniesApi.md#sectionsPost) | **post** /Sections | Create a section,,  Require System Admin
[**v10ApiCompaniesExecutionGet**](CompaniesApi.md#v10ApiCompaniesExecutionGet) | **get** /v1.0/Api/Companies/Execution | Get Execution Companies
[**v10ApiCompaniesExecutionPost**](CompaniesApi.md#v10ApiCompaniesExecutionPost) | **post** /v1.0/Api/Companies/Execution | Create Execution Company, Anonymous Usage
[**v10ApiCompaniesExecutionsCompanyIdGet**](CompaniesApi.md#v10ApiCompaniesExecutionsCompanyIdGet) | **get** /v1.0/Api/Companies/Executions/{companyId} | Get Single Execution Company
[**v10ApiCompaniesGovPost**](CompaniesApi.md#v10ApiCompaniesGovPost) | **post** /v1.0/Api/Companies/Gov | Create Government Company , Anonymous Usage
[**v10ApiCompaniesGovsCompanyIdGet**](CompaniesApi.md#v10ApiCompaniesGovsCompanyIdGet) | **get** /v1.0/Api/Companies/Govs/{companyId} | Get Single Gov Company
[**v10ApiCompaniesGovsGet**](CompaniesApi.md#v10ApiCompaniesGovsGet) | **get** /v1.0/Api/Companies/Govs | Get Gov Companies
[**v10ApiCompaniesIdDelete**](CompaniesApi.md#v10ApiCompaniesIdDelete) | **delete** /v1.0/Api/Companies/{id} | Delete a Company , System Admin Usage
[**v10ApiCompaniesIdVerifyPut**](CompaniesApi.md#v10ApiCompaniesIdVerifyPut) | **put** /v1.0/Api/Companies/{id}/Verify | Verify  Company , System Admin Usage
[**v10ApiImportGovCompaniesPut**](CompaniesApi.md#v10ApiImportGovCompaniesPut) | **put** /v1.0/Api/ImportGovCompanies | Import gov companies , System Admin Usage


# **activitiesGet**
> BuiltList<CompanyActivity> activitiesGet(partialName, isActive)

Get Activities ,, Anonymous Usage

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var partialName = partialName_example; // String | 
var isActive = true; // bool | 

try { 
    var result = api_instance.activitiesGet(partialName, isActive);
    print(result);
} catch (e) {
    print('Exception when calling CompaniesApi->activitiesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partialName** | **String**|  | [optional] 
 **isActive** | **bool**|  | [optional] 

### Return type

[**BuiltList<CompanyActivity>**](CompanyActivity.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activitiesIdActivatePut**
> activitiesIdActivatePut(id)

Activate a deleted Activity,, Sys Admin Require

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var id = 56; // int | 

try { 
    api_instance.activitiesIdActivatePut(id);
} catch (e) {
    print('Exception when calling CompaniesApi->activitiesIdActivatePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activitiesIdDelete**
> activitiesIdDelete(id)

Delete Activities ,, Sys Admin Require

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var id = 56; // int | 

try { 
    api_instance.activitiesIdDelete(id);
} catch (e) {
    print('Exception when calling CompaniesApi->activitiesIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activitiesIdPut**
> activitiesIdPut(id, name)

Update Activity ,, SysAdminRequire

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var id = 56; // int | 
var name = name_example; // String | 

try { 
    api_instance.activitiesIdPut(id, name);
} catch (e) {
    print('Exception when calling CompaniesApi->activitiesIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **name** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activitiesPost**
> Int32DataWrapperVM activitiesPost(name)

Create an activity,,  Require System Admin

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var name = name_example; // String | 

try { 
    var result = api_instance.activitiesPost(name);
    print(result);
} catch (e) {
    print('Exception when calling CompaniesApi->activitiesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 

### Return type

[**Int32DataWrapperVM**](Int32DataWrapperVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sectionsGet**
> BuiltList<CompanySection> sectionsGet(partialName, isActive)

Get sections ,, Anonymous Usage

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var partialName = partialName_example; // String | 
var isActive = true; // bool | 

try { 
    var result = api_instance.sectionsGet(partialName, isActive);
    print(result);
} catch (e) {
    print('Exception when calling CompaniesApi->sectionsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partialName** | **String**|  | [optional] 
 **isActive** | **bool**|  | [optional] 

### Return type

[**BuiltList<CompanySection>**](CompanySection.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sectionsIdActivatePut**
> sectionsIdActivatePut(id)

Activate a deleted section,, Sys Admin Require

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var id = 56; // int | 

try { 
    api_instance.sectionsIdActivatePut(id);
} catch (e) {
    print('Exception when calling CompaniesApi->sectionsIdActivatePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sectionsIdDelete**
> sectionsIdDelete(id)

Delete Sections ,, Anonymous Usage

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var id = 56; // int | 

try { 
    api_instance.sectionsIdDelete(id);
} catch (e) {
    print('Exception when calling CompaniesApi->sectionsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sectionsIdPut**
> sectionsIdPut(id, name)

Update Section ,, Anonymous Usage

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var id = 56; // int | 
var name = name_example; // String | 

try { 
    api_instance.sectionsIdPut(id, name);
} catch (e) {
    print('Exception when calling CompaniesApi->sectionsIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **name** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sectionsPost**
> Int32DataWrapperVM sectionsPost(name)

Create a section,,  Require System Admin

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var name = name_example; // String | 

try { 
    var result = api_instance.sectionsPost(name);
    print(result);
} catch (e) {
    print('Exception when calling CompaniesApi->sectionsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 

### Return type

[**Int32DataWrapperVM**](Int32DataWrapperVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiCompaniesExecutionGet**
> ExecutionCompanyViewModelPaginatedResponse v10ApiCompaniesExecutionGet(textFilter, isVerified, pageIndex, pageSize)

Get Execution Companies

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var textFilter = textFilter_example; // String | 
var isVerified = true; // bool | 
var pageIndex = 56; // int | 
var pageSize = 56; // int | 

try { 
    var result = api_instance.v10ApiCompaniesExecutionGet(textFilter, isVerified, pageIndex, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling CompaniesApi->v10ApiCompaniesExecutionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **textFilter** | **String**|  | [optional] 
 **isVerified** | **bool**|  | [optional] 
 **pageIndex** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 30]

### Return type

[**ExecutionCompanyViewModelPaginatedResponse**](ExecutionCompanyViewModelPaginatedResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiCompaniesExecutionPost**
> ExecutionCompanyViewModelDataWrapperVM v10ApiCompaniesExecutionPost(name, id, engLayer, companyRegister, phone1, phone2, address, fax, notes, email)

Create Execution Company, Anonymous Usage

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var name = name_example; // String | 
var id = id_example; // String | 
var engLayer = engLayer_example; // String | 
var companyRegister = companyRegister_example; // String | 
var phone1 = phone1_example; // String | 
var phone2 = phone2_example; // String | 
var address = address_example; // String | 
var fax = fax_example; // String | 
var notes = notes_example; // String | 
var email = email_example; // String | 

try { 
    var result = api_instance.v10ApiCompaniesExecutionPost(name, id, engLayer, companyRegister, phone1, phone2, address, fax, notes, email);
    print(result);
} catch (e) {
    print('Exception when calling CompaniesApi->v10ApiCompaniesExecutionPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **id** | **String**|  | [optional] 
 **engLayer** | **String**|  | [optional] 
 **companyRegister** | **String**|  | [optional] 
 **phone1** | **String**|  | [optional] 
 **phone2** | **String**|  | [optional] 
 **address** | **String**|  | [optional] 
 **fax** | **String**|  | [optional] 
 **notes** | **String**|  | [optional] 
 **email** | **String**|  | [optional] 

### Return type

[**ExecutionCompanyViewModelDataWrapperVM**](ExecutionCompanyViewModelDataWrapperVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiCompaniesExecutionsCompanyIdGet**
> ExecutionCompanyViewModel v10ApiCompaniesExecutionsCompanyIdGet(companyId)

Get Single Execution Company

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var companyId = companyId_example; // String | 

try { 
    var result = api_instance.v10ApiCompaniesExecutionsCompanyIdGet(companyId);
    print(result);
} catch (e) {
    print('Exception when calling CompaniesApi->v10ApiCompaniesExecutionsCompanyIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **String**|  | 

### Return type

[**ExecutionCompanyViewModel**](ExecutionCompanyViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiCompaniesGovPost**
> GovCompanyViewModelDataWrapperVM v10ApiCompaniesGovPost(activityId, sectionId, name, id, isInMansouraUniversity, phone1, phone2, address, fax, notes, email)

Create Government Company , Anonymous Usage

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var activityId = 56; // int | 
var sectionId = 56; // int | 
var name = name_example; // String | 
var id = id_example; // String | 
var isInMansouraUniversity = true; // bool | 
var phone1 = phone1_example; // String | 
var phone2 = phone2_example; // String | 
var address = address_example; // String | 
var fax = fax_example; // String | 
var notes = notes_example; // String | 
var email = email_example; // String | 

try { 
    var result = api_instance.v10ApiCompaniesGovPost(activityId, sectionId, name, id, isInMansouraUniversity, phone1, phone2, address, fax, notes, email);
    print(result);
} catch (e) {
    print('Exception when calling CompaniesApi->v10ApiCompaniesGovPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activityId** | **int**|  | 
 **sectionId** | **int**|  | 
 **name** | **String**|  | 
 **id** | **String**|  | [optional] 
 **isInMansouraUniversity** | **bool**|  | [optional] 
 **phone1** | **String**|  | [optional] 
 **phone2** | **String**|  | [optional] 
 **address** | **String**|  | [optional] 
 **fax** | **String**|  | [optional] 
 **notes** | **String**|  | [optional] 
 **email** | **String**|  | [optional] 

### Return type

[**GovCompanyViewModelDataWrapperVM**](GovCompanyViewModelDataWrapperVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiCompaniesGovsCompanyIdGet**
> GovCompanyViewModel v10ApiCompaniesGovsCompanyIdGet(companyId)

Get Single Gov Company

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var companyId = companyId_example; // String | 

try { 
    var result = api_instance.v10ApiCompaniesGovsCompanyIdGet(companyId);
    print(result);
} catch (e) {
    print('Exception when calling CompaniesApi->v10ApiCompaniesGovsCompanyIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **String**|  | 

### Return type

[**GovCompanyViewModel**](GovCompanyViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiCompaniesGovsGet**
> GovCompanyViewModelPaginatedResponse v10ApiCompaniesGovsGet(textFilter, activityId, sectionId, isVerified, isInMansUniversity, pageIndex, pageSize)

Get Gov Companies

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var textFilter = textFilter_example; // String | 
var activityId = 56; // int | 
var sectionId = 56; // int | 
var isVerified = true; // bool | 
var isInMansUniversity = true; // bool | 
var pageIndex = 56; // int | 
var pageSize = 56; // int | 

try { 
    var result = api_instance.v10ApiCompaniesGovsGet(textFilter, activityId, sectionId, isVerified, isInMansUniversity, pageIndex, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling CompaniesApi->v10ApiCompaniesGovsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **textFilter** | **String**|  | [optional] 
 **activityId** | **int**|  | [optional] 
 **sectionId** | **int**|  | [optional] 
 **isVerified** | **bool**|  | [optional] 
 **isInMansUniversity** | **bool**|  | [optional] 
 **pageIndex** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 30]

### Return type

[**GovCompanyViewModelPaginatedResponse**](GovCompanyViewModelPaginatedResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiCompaniesIdDelete**
> v10ApiCompaniesIdDelete(id)

Delete a Company , System Admin Usage

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var id = id_example; // String | 

try { 
    api_instance.v10ApiCompaniesIdDelete(id);
} catch (e) {
    print('Exception when calling CompaniesApi->v10ApiCompaniesIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiCompaniesIdVerifyPut**
> v10ApiCompaniesIdVerifyPut(id)

Verify  Company , System Admin Usage

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var id = id_example; // String | 

try { 
    api_instance.v10ApiCompaniesIdVerifyPut(id);
} catch (e) {
    print('Exception when calling CompaniesApi->v10ApiCompaniesIdVerifyPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiImportGovCompaniesPut**
> v10ApiImportGovCompaniesPut(internalCSV, externalCSV)

Import gov companies , System Admin Usage

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new CompaniesApi();
var internalCSV = BINARY_DATA_HERE; // MultipartFile | 
var externalCSV = BINARY_DATA_HERE; // MultipartFile | 

try { 
    api_instance.v10ApiImportGovCompaniesPut(internalCSV, externalCSV);
} catch (e) {
    print('Exception when calling CompaniesApi->v10ApiImportGovCompaniesPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **internalCSV** | **MultipartFile**|  | [optional] 
 **externalCSV** | **MultipartFile**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

