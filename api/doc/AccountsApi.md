# proeye_api.api.AccountsApi

## Load the API package
```dart
import 'package:proeye_api/api.dart';
```

All URIs are relative to *https://proeye.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v10ApiAccountsChangePasswordPut**](AccountsApi.md#v10ApiAccountsChangePasswordPut) | **put** /v1.0/Api/Accounts/ChangePassword | Change current authorized password , login Required
[**v10ApiAccountsGet**](AccountsApi.md#v10ApiAccountsGet) | **get** /v1.0/Api/Accounts | Get The Users ,, 
[**v10ApiAccountsIdActivatePut**](AccountsApi.md#v10ApiAccountsIdActivatePut) | **put** /v1.0/Api/Accounts/{id}/Activate | Activate user , Require system Admin
[**v10ApiAccountsIdAddClaimPut**](AccountsApi.md#v10ApiAccountsIdAddClaimPut) | **put** /v1.0/Api/Accounts/{id}/AddClaim | Add Claim, Require sys admin
[**v10ApiAccountsIdChangeAnyPasswordPut**](AccountsApi.md#v10ApiAccountsIdChangeAnyPasswordPut) | **put** /v1.0/Api/Accounts/{id}/ChangeAnyPassword | Change the password for any user by Id. , System Admin Required
[**v10ApiAccountsIdCheckFirstLoginGet**](AccountsApi.md#v10ApiAccountsIdCheckFirstLoginGet) | **get** /v1.0/Api/Accounts/{id}/CheckFirstLogin | Get if it the first login , Anonymous usage
[**v10ApiAccountsIdClaimsTypeDelete**](AccountsApi.md#v10ApiAccountsIdClaimsTypeDelete) | **delete** /v1.0/Api/Accounts/{id}/Claims/{type} | Remove a claim for a user, System Admin Required
[**v10ApiAccountsIdDeactivateDelete**](AccountsApi.md#v10ApiAccountsIdDeactivateDelete) | **delete** /v1.0/Api/Accounts/{id}/Deactivate | deactivate a user, System Admin Required
[**v10ApiAccountsIdGet**](AccountsApi.md#v10ApiAccountsIdGet) | **get** /v1.0/Api/Accounts/{id} | Get The User by Id 
[**v10ApiAccountsIdPut**](AccountsApi.md#v10ApiAccountsIdPut) | **put** /v1.0/Api/Accounts/{id} | Update a user, System Admin Required
[**v10ApiAccountsIdReturnFirstLoginPut**](AccountsApi.md#v10ApiAccountsIdReturnFirstLoginPut) | **put** /v1.0/Api/Accounts/{id}/ReturnFirstLogin | Return First Login , Admin usage 
[**v10ApiAccountsIsAccessTokenValidGet**](AccountsApi.md#v10ApiAccountsIsAccessTokenValidGet) | **get** /v1.0/Api/Accounts/IsAccessTokenValid | 
[**v10ApiAccountsLoginFirstTimePost**](AccountsApi.md#v10ApiAccountsLoginFirstTimePost) | **post** /v1.0/Api/Accounts/LoginFirstTime | Login First Time , Anonymous usage 
[**v10ApiAccountsLoginPost**](AccountsApi.md#v10ApiAccountsLoginPost) | **post** /v1.0/Api/Accounts/Login | 
[**v10ApiAccountsPost**](AccountsApi.md#v10ApiAccountsPost) | **post** /v1.0/Api/Accounts | Register a new user , Roles &#x3D;  \&quot;President|ExecutiveManager|EngManagementDirector|SystemAdmin|NormalUser|Developer\&quot; ,  Require a system admin
[**v10ApiAccountsRefreshTokenPut**](AccountsApi.md#v10ApiAccountsRefreshTokenPut) | **put** /v1.0/Api/Accounts/RefreshToken | Refresh a  token
[**v10ApiAccountsRevokeTokenDelete**](AccountsApi.md#v10ApiAccountsRevokeTokenDelete) | **delete** /v1.0/Api/Accounts/RevokeToken | Revoke  a  token


# **v10ApiAccountsChangePasswordPut**
> v10ApiAccountsChangePasswordPut(changePasswordViewModel)

Change current authorized password , login Required

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();
var changePasswordViewModel = new ChangePasswordViewModel(); // ChangePasswordViewModel | 

try { 
    api_instance.v10ApiAccountsChangePasswordPut(changePasswordViewModel);
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsChangePasswordPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changePasswordViewModel** | [**ChangePasswordViewModel**](ChangePasswordViewModel.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiAccountsGet**
> UserViewModelPaginatedResponse v10ApiAccountsGet(partialId, partialNameAr, partialEmail, pageIndex, pageSize)

Get The Users ,, 

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();
var partialId = partialId_example; // String | 
var partialNameAr = partialNameAr_example; // String | 
var partialEmail = partialEmail_example; // String | 
var pageIndex = 56; // int | 
var pageSize = 56; // int | 

try { 
    var result = api_instance.v10ApiAccountsGet(partialId, partialNameAr, partialEmail, pageIndex, pageSize);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partialId** | **String**|  | [optional] 
 **partialNameAr** | **String**|  | [optional] 
 **partialEmail** | **String**|  | [optional] 
 **pageIndex** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 30]

### Return type

[**UserViewModelPaginatedResponse**](UserViewModelPaginatedResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiAccountsIdActivatePut**
> v10ApiAccountsIdActivatePut(id)

Activate user , Require system Admin

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();
var id = id_example; // String | 

try { 
    api_instance.v10ApiAccountsIdActivatePut(id);
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsIdActivatePut: $e\n');
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
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiAccountsIdAddClaimPut**
> v10ApiAccountsIdAddClaimPut(id, addClaimViewModel)

Add Claim, Require sys admin

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();
var id = id_example; // String | 
var addClaimViewModel = new AddClaimViewModel(); // AddClaimViewModel | 

try { 
    api_instance.v10ApiAccountsIdAddClaimPut(id, addClaimViewModel);
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsIdAddClaimPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **addClaimViewModel** | [**AddClaimViewModel**](AddClaimViewModel.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiAccountsIdChangeAnyPasswordPut**
> v10ApiAccountsIdChangeAnyPasswordPut(id, changeAnyPasswordViewModel)

Change the password for any user by Id. , System Admin Required

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();
var id = id_example; // String | 
var changeAnyPasswordViewModel = new ChangeAnyPasswordViewModel(); // ChangeAnyPasswordViewModel | 

try { 
    api_instance.v10ApiAccountsIdChangeAnyPasswordPut(id, changeAnyPasswordViewModel);
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsIdChangeAnyPasswordPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **changeAnyPasswordViewModel** | [**ChangeAnyPasswordViewModel**](ChangeAnyPasswordViewModel.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiAccountsIdCheckFirstLoginGet**
> BooleanDataWrapperVM v10ApiAccountsIdCheckFirstLoginGet(id)

Get if it the first login , Anonymous usage

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();
var id = id_example; // String | 

try { 
    var result = api_instance.v10ApiAccountsIdCheckFirstLoginGet(id);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsIdCheckFirstLoginGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**BooleanDataWrapperVM**](BooleanDataWrapperVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiAccountsIdClaimsTypeDelete**
> v10ApiAccountsIdClaimsTypeDelete(id, type)

Remove a claim for a user, System Admin Required

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();
var id = id_example; // String | 
var type = type_example; // String | 

try { 
    api_instance.v10ApiAccountsIdClaimsTypeDelete(id, type);
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsIdClaimsTypeDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **type** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiAccountsIdDeactivateDelete**
> v10ApiAccountsIdDeactivateDelete(id)

deactivate a user, System Admin Required

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();
var id = id_example; // String | 

try { 
    api_instance.v10ApiAccountsIdDeactivateDelete(id);
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsIdDeactivateDelete: $e\n');
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
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiAccountsIdGet**
> UserViewModel v10ApiAccountsIdGet(id)

Get The User by Id 

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();
var id = id_example; // String | 

try { 
    var result = api_instance.v10ApiAccountsIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**UserViewModel**](UserViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiAccountsIdPut**
> UserViewModel v10ApiAccountsIdPut(id, nameAr, email, phoneNumber, photoUrl, jobDesc, isGlobalReviewer)

Update a user, System Admin Required

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();
var id = id_example; // String | 
var nameAr = nameAr_example; // String | 
var email = ; // String | 
var phoneNumber = phoneNumber_example; // String | 
var photoUrl = photoUrl_example; // String | 
var jobDesc = jobDesc_example; // String | 
var isGlobalReviewer = true; // bool | 

try { 
    var result = api_instance.v10ApiAccountsIdPut(id, nameAr, email, phoneNumber, photoUrl, jobDesc, isGlobalReviewer);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **nameAr** | **String**|  | 
 **email** | [**String**](String.md)|  | [optional] 
 **phoneNumber** | **String**|  | [optional] 
 **photoUrl** | **String**|  | [optional] 
 **jobDesc** | **String**|  | [optional] 
 **isGlobalReviewer** | **bool**|  | [optional] 

### Return type

[**UserViewModel**](UserViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiAccountsIdReturnFirstLoginPut**
> v10ApiAccountsIdReturnFirstLoginPut(id)

Return First Login , Admin usage 

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();
var id = id_example; // String | 

try { 
    api_instance.v10ApiAccountsIdReturnFirstLoginPut(id);
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsIdReturnFirstLoginPut: $e\n');
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
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiAccountsIsAccessTokenValidGet**
> v10ApiAccountsIsAccessTokenValidGet()



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();

try { 
    api_instance.v10ApiAccountsIsAccessTokenValidGet();
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsIsAccessTokenValidGet: $e\n');
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

# **v10ApiAccountsLoginFirstTimePost**
> TokenBagViewModel v10ApiAccountsLoginFirstTimePost(nationalId, password, confirmPassword, phoneNumber, nameAr, email, jobDesc, photoUrl)

Login First Time , Anonymous usage 

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();
var nationalId = nationalId_example; // String | 
var password = password_example; // String | 
var confirmPassword = confirmPassword_example; // String | 
var phoneNumber = phoneNumber_example; // String | 
var nameAr = nameAr_example; // String | 
var email = ; // String | 
var jobDesc = jobDesc_example; // String | 
var photoUrl = photoUrl_example; // String | 

try { 
    var result = api_instance.v10ApiAccountsLoginFirstTimePost(nationalId, password, confirmPassword, phoneNumber, nameAr, email, jobDesc, photoUrl);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsLoginFirstTimePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nationalId** | **String**|  | 
 **password** | **String**|  | 
 **confirmPassword** | **String**|  | 
 **phoneNumber** | **String**|  | 
 **nameAr** | **String**|  | 
 **email** | [**String**](String.md)|  | [optional] 
 **jobDesc** | **String**|  | [optional] 
 **photoUrl** | **String**|  | [optional] 

### Return type

[**TokenBagViewModel**](TokenBagViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiAccountsLoginPost**
> TokenBagViewModel v10ApiAccountsLoginPost(nationalId, password)



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();
var nationalId = nationalId_example; // String | 
var password = password_example; // String | 

try { 
    var result = api_instance.v10ApiAccountsLoginPost(nationalId, password);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nationalId** | **String**|  | 
 **password** | **String**|  | 

### Return type

[**TokenBagViewModel**](TokenBagViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiAccountsPost**
> UserViewModel v10ApiAccountsPost(nationalId, role, isGlobalReviewer, nameAr, email, jobDesc, photoUrl, phoneNumber)

Register a new user , Roles =  \"President|ExecutiveManager|EngManagementDirector|SystemAdmin|NormalUser|Developer\" ,  Require a system admin

President|ExecutiveManager|EngManagementDirector|SystemAdmin|NormalUser|Developer\" ,  Require a system admin

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();
var nationalId = nationalId_example; // String | 
var role = role_example; // String | 
var isGlobalReviewer = true; // bool | 
var nameAr = nameAr_example; // String | 
var email = ; // String | 
var jobDesc = jobDesc_example; // String | 
var photoUrl = photoUrl_example; // String | 
var phoneNumber = phoneNumber_example; // String | 

try { 
    var result = api_instance.v10ApiAccountsPost(nationalId, role, isGlobalReviewer, nameAr, email, jobDesc, photoUrl, phoneNumber);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nationalId** | **String**|  | 
 **role** | **String**|  | 
 **isGlobalReviewer** | **bool**|  | 
 **nameAr** | **String**|  | [optional] 
 **email** | [**String**](String.md)|  | [optional] 
 **jobDesc** | **String**|  | [optional] 
 **photoUrl** | **String**|  | [optional] 
 **phoneNumber** | **String**|  | [optional] 

### Return type

[**UserViewModel**](UserViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiAccountsRefreshTokenPut**
> TokenBagViewModel v10ApiAccountsRefreshTokenPut(tokenApiModel)

Refresh a  token

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();
var tokenApiModel = new TokenApiModel(); // TokenApiModel | 

try { 
    var result = api_instance.v10ApiAccountsRefreshTokenPut(tokenApiModel);
    print(result);
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsRefreshTokenPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenApiModel** | [**TokenApiModel**](TokenApiModel.md)|  | [optional] 

### Return type

[**TokenBagViewModel**](TokenBagViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiAccountsRevokeTokenDelete**
> v10ApiAccountsRevokeTokenDelete()

Revoke  a  token

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new AccountsApi();

try { 
    api_instance.v10ApiAccountsRevokeTokenDelete();
} catch (e) {
    print('Exception when calling AccountsApi->v10ApiAccountsRevokeTokenDelete: $e\n');
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
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

