import 'package:get/get.dart';
import 'package:proeye_api/api.dart';
import 'package:dio/dio.dart' as dio;
import 'package:pro_eye/generated/l10n.dart';

mixin ApiMixin {
  ProeyeApi get api => Get.find();

  Future<T> request<T>(
    Future<dio.Response<T>> future,
  ) async {
    try {
      return (await future).data;
    } on dio.DioError catch (dioError) {
      String errorMessage;
      if (dioError.type == dio.DioErrorType.connectTimeout ||
          dioError.type == dio.DioErrorType.receiveTimeout ||
          dioError.type == dio.DioErrorType.sendTimeout) {
        errorMessage = S.current.socketException;
      } else if (dioError.type == dio.DioErrorType.cancel) {
        errorMessage = S.current.httpException;
      } else if (dioError.type == dio.DioErrorType.response) {
        switch (dioError.response.statusCode) {
          case 401:
          case 400:
            errorMessage = dioError.response.data;
            break;
          case 500:
            errorMessage = S.current.formatException;
            break;
          default:
            errorMessage = S.current.formatException;
        }
      }
      throw errorMessage;
    }
  }
}
