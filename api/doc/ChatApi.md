# proeye_api.api.ChatApi

## Load the API package
```dart
import 'package:proeye_api/api.dart';
```

All URIs are relative to *https://proeye.azurewebsites.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v10ApiChatRoomProjectIdCreateOrUpdateChatRoomPut**](ChatApi.md#v10ApiChatRoomProjectIdCreateOrUpdateChatRoomPut) | **put** /v1.0/Api/ChatRoom/{projectId}/CreateOrUpdateChatRoom | Creates or updates a chat room
[**v10ApiChatRoomProjectIdGet**](ChatApi.md#v10ApiChatRoomProjectIdGet) | **get** /v1.0/Api/ChatRoom/{projectId} | Get Project Chat
[**v10ApiChatRoomProjectIdRoomIdGet**](ChatApi.md#v10ApiChatRoomProjectIdRoomIdGet) | **get** /v1.0/Api/ChatRoom/{projectId}/{roomId} | Get Project Chat
[**v10ApiChatRoomProjectIdRoomIdInviteParticipantPut**](ChatApi.md#v10ApiChatRoomProjectIdRoomIdInviteParticipantPut) | **put** /v1.0/Api/ChatRoom/{projectId}/{roomId}/InviteParticipant | Invites a user to the group
[**v10ApiChatRoomProjectIdRoomIdKickParticipantTargetIdPut**](ChatApi.md#v10ApiChatRoomProjectIdRoomIdKickParticipantTargetIdPut) | **put** /v1.0/Api/ChatRoom/{projectId}/{roomId}/KickParticipant/{targetId} | Removes a user from the group
[**v10ApiChatRoomProjectIdRoomIdMessagesGet**](ChatApi.md#v10ApiChatRoomProjectIdRoomIdMessagesGet) | **get** /v1.0/Api/ChatRoom/{projectId}/{roomId}/Messages | Get the messges of a project chat
[**v10ApiChatRoomProjectIdRoomIdMessagesMessageIdChangePinPut**](ChatApi.md#v10ApiChatRoomProjectIdRoomIdMessagesMessageIdChangePinPut) | **put** /v1.0/Api/ChatRoom/{projectId}/{roomId}/Messages/{messageId}/ChangePin | Pin a message,  not tested
[**v10ApiChatRoomProjectIdRoomIdMessagesSendMessagePost**](ChatApi.md#v10ApiChatRoomProjectIdRoomIdMessagesSendMessagePost) | **post** /v1.0/Api/ChatRoom/{projectId}/{roomId}/Messages/SendMessage | Send a message to a project,  not tested
[**v10ApiSignalRModelGet**](ChatApi.md#v10ApiSignalRModelGet) | **get** /v1.0/Api/SignalRModel | 


# **v10ApiChatRoomProjectIdCreateOrUpdateChatRoomPut**
> ProjectChatRoomVM v10ApiChatRoomProjectIdCreateOrUpdateChatRoomPut(projectId, roomId, roomName, imageFullUrl, isPublic)

Creates or updates a chat room

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ChatApi();
var projectId = projectId_example; // String | 
var roomId = roomId_example; // String | 
var roomName = roomName_example; // String | 
var imageFullUrl = imageFullUrl_example; // String | 
var isPublic = true; // bool | 

try { 
    var result = api_instance.v10ApiChatRoomProjectIdCreateOrUpdateChatRoomPut(projectId, roomId, roomName, imageFullUrl, isPublic);
    print(result);
} catch (e) {
    print('Exception when calling ChatApi->v10ApiChatRoomProjectIdCreateOrUpdateChatRoomPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **roomId** | **String**|  | [optional] 
 **roomName** | **String**|  | [optional] 
 **imageFullUrl** | **String**|  | [optional] 
 **isPublic** | **bool**|  | [optional] 

### Return type

[**ProjectChatRoomVM**](ProjectChatRoomVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiChatRoomProjectIdGet**
> BuiltList<ProjectChatRoomAbstractVM> v10ApiChatRoomProjectIdGet(projectId)

Get Project Chat

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ChatApi();
var projectId = projectId_example; // String | 

try { 
    var result = api_instance.v10ApiChatRoomProjectIdGet(projectId);
    print(result);
} catch (e) {
    print('Exception when calling ChatApi->v10ApiChatRoomProjectIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 

### Return type

[**BuiltList<ProjectChatRoomAbstractVM>**](ProjectChatRoomAbstractVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiChatRoomProjectIdRoomIdGet**
> ProjectChatRoomVM v10ApiChatRoomProjectIdRoomIdGet(projectId, roomId)

Get Project Chat

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ChatApi();
var projectId = projectId_example; // String | 
var roomId = roomId_example; // String | 

try { 
    var result = api_instance.v10ApiChatRoomProjectIdRoomIdGet(projectId, roomId);
    print(result);
} catch (e) {
    print('Exception when calling ChatApi->v10ApiChatRoomProjectIdRoomIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **roomId** | **String**|  | 

### Return type

[**ProjectChatRoomVM**](ProjectChatRoomVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiChatRoomProjectIdRoomIdInviteParticipantPut**
> v10ApiChatRoomProjectIdRoomIdInviteParticipantPut(projectId, roomId, targetId, isAdmin)

Invites a user to the group

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ChatApi();
var projectId = projectId_example; // String | 
var roomId = roomId_example; // String | 
var targetId = targetId_example; // String | 
var isAdmin = true; // bool | 

try { 
    api_instance.v10ApiChatRoomProjectIdRoomIdInviteParticipantPut(projectId, roomId, targetId, isAdmin);
} catch (e) {
    print('Exception when calling ChatApi->v10ApiChatRoomProjectIdRoomIdInviteParticipantPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **roomId** | **String**|  | 
 **targetId** | **String**|  | [optional] 
 **isAdmin** | **bool**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiChatRoomProjectIdRoomIdKickParticipantTargetIdPut**
> v10ApiChatRoomProjectIdRoomIdKickParticipantTargetIdPut(projectId, roomId, targetId)

Removes a user from the group

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ChatApi();
var projectId = projectId_example; // String | 
var roomId = roomId_example; // String | 
var targetId = targetId_example; // String | 

try { 
    api_instance.v10ApiChatRoomProjectIdRoomIdKickParticipantTargetIdPut(projectId, roomId, targetId);
} catch (e) {
    print('Exception when calling ChatApi->v10ApiChatRoomProjectIdRoomIdKickParticipantTargetIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **roomId** | **String**|  | 
 **targetId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiChatRoomProjectIdRoomIdMessagesGet**
> MessageViewModelPaginatedResponse v10ApiChatRoomProjectIdRoomIdMessagesGet(projectId, roomId, pageIndex, pageSize, isPinned)

Get the messges of a project chat

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ChatApi();
var projectId = projectId_example; // String | 
var roomId = roomId_example; // String | 
var pageIndex = 56; // int | 
var pageSize = 56; // int | 
var isPinned = true; // bool | 

try { 
    var result = api_instance.v10ApiChatRoomProjectIdRoomIdMessagesGet(projectId, roomId, pageIndex, pageSize, isPinned);
    print(result);
} catch (e) {
    print('Exception when calling ChatApi->v10ApiChatRoomProjectIdRoomIdMessagesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **roomId** | **String**|  | 
 **pageIndex** | **int**|  | [optional] [default to 1]
 **pageSize** | **int**|  | [optional] [default to 30]
 **isPinned** | **bool**|  | [optional] 

### Return type

[**MessageViewModelPaginatedResponse**](MessageViewModelPaginatedResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiChatRoomProjectIdRoomIdMessagesMessageIdChangePinPut**
> v10ApiChatRoomProjectIdRoomIdMessagesMessageIdChangePinPut(projectId, roomId, messageId, isPinned)

Pin a message,  not tested

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ChatApi();
var projectId = projectId_example; // String | 
var roomId = roomId_example; // String | 
var messageId = messageId_example; // String | 
var isPinned = true; // bool | 

try { 
    api_instance.v10ApiChatRoomProjectIdRoomIdMessagesMessageIdChangePinPut(projectId, roomId, messageId, isPinned);
} catch (e) {
    print('Exception when calling ChatApi->v10ApiChatRoomProjectIdRoomIdMessagesMessageIdChangePinPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **roomId** | **String**|  | 
 **messageId** | **String**|  | 
 **isPinned** | **bool**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiChatRoomProjectIdRoomIdMessagesSendMessagePost**
> MessageViewModel v10ApiChatRoomProjectIdRoomIdMessagesSendMessagePost(projectId, roomId, content, officialRequestFiles)

Send a message to a project,  not tested

### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ChatApi();
var projectId = projectId_example; // String | 
var roomId = roomId_example; // String | 
var content = content_example; // String | 
var officialRequestFiles = [BINARY_DATA_HERE]; // BuiltList<MultipartFile> | 

try { 
    var result = api_instance.v10ApiChatRoomProjectIdRoomIdMessagesSendMessagePost(projectId, roomId, content, officialRequestFiles);
    print(result);
} catch (e) {
    print('Exception when calling ChatApi->v10ApiChatRoomProjectIdRoomIdMessagesSendMessagePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **String**|  | 
 **roomId** | **String**|  | 
 **content** | **String**|  | [optional] 
 **officialRequestFiles** | [**BuiltList<MultipartFile>**](MultipartFile.md)|  | [optional] 

### Return type

[**MessageViewModel**](MessageViewModel.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v10ApiSignalRModelGet**
> SignalRMessageVM v10ApiSignalRModelGet()



### Example 
```dart
import 'package:proeye_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

var api_instance = new ChatApi();

try { 
    var result = api_instance.v10ApiSignalRModelGet();
    print(result);
} catch (e) {
    print('Exception when calling ChatApi->v10ApiSignalRModelGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SignalRMessageVM**](SignalRMessageVM.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

