import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:proeye_api/model/app_file_view_model.dart';
import 'package:proeye_api/api_util.dart';
import 'package:built_collection/built_collection.dart';

class FilesApi {
  final Dio _dio;
  Serializers _serializers;
  bool _fileNamesHaveBrackets;
  String get _appended => _fileNamesHaveBrackets ? '[]' : '';
  FilesApi(this._dio, this._serializers, this._fileNamesHaveBrackets);

  ///
  ///
  ///
  Future<Response<BuiltList<AppFileViewModel>>> v10ApiFilesPost({
    BuiltList<MultipartFile> files,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Files';

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, value) => value == null);
    headerParams.removeWhere((key, value) => value == null);

    final List<String> contentTypes = [
      'multipart/form-data',
    ];

    final Map<String, dynamic> formData = {};
    final _formFiles = <MapEntry<String, MultipartFile>>[];

    if (files != null) {
      _formFiles.addAll(files.map((x) => MapEntry(r'files' + _appended, x)));
    }
    final formDataObj = FormData.fromMap(formData);
    formDataObj.files.addAll(_formFiles);
    bodyData = formDataObj;

    return _dio
        .request(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'post'.toUpperCase(),
        headers: headerParams,
        extra: {
          'secure': [
            {
              'type': 'apiKey',
              'name': 'Bearer',
              'keyName': 'Authorization',
              'where': 'header',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType:
            contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      const collectionType = BuiltList;
      const type = FullType(collectionType, [FullType(AppFileViewModel)]);
      final BuiltList<AppFileViewModel> data = _serializers.deserialize(
          response.data is String ? jsonDecode(response.data) : response.data,
          specifiedType: type);

      return Response<BuiltList<AppFileViewModel>>(
        data: data,
        headers: response.headers,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }
}
