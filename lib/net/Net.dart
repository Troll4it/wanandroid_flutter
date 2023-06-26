import 'package:dio/dio.dart';

import 'BaseNetModel.dart';
import 'NetOptions.dart';

get(url, {data, options, onSuccess, onFailure}) async {
  try {
    Response response = await NetOptions.instance.dio
        .get(url, queryParameters: data, options: options);
    onSuccess(response.data);
    print("请求${response.statusCode}");
  } on DioException catch (e) {
    onFailure(ResponseCode.FUILURE);
    _formatError(e);
  }
}

post(url, {data, options, onSuccess, onFailure}) async {
  try {
    Response response = await NetOptions.instance.dio
        .post(url, queryParameters: data, options: options);
    onSuccess(response.data);
    print("请求${response.statusCode}");
  } on DioException catch (e) {
    print("请求${e}");
    onFailure(ResponseCode.FUILURE);
    _formatError(e);
  }
}

///todo  错误方法处理
_formatError(DioException e) {
  if (e.type == DioExceptionType.connectionTimeout) {
  } else if (e.type == DioExceptionType.sendTimeout) {
  } else if (e.type == DioExceptionType.receiveTimeout) {
  } else if (e.type == DioExceptionType.unknown) {
  } else if (e.type == DioExceptionType.cancel) {}
}
