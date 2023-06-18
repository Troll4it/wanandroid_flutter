import 'package:dio/dio.dart';
import 'package:wan/net/pretty_dio_logger.dart';

import 'Api.dart';

class Net {
  factory Net() => getInstance();

  static Net get instance => getInstance();
  static Net? _instance;

  static const int connectTimeOut = 30 * 1000;
  static const int receiveTimeout = 30 * 1000;
  Dio? dio;

  Net.init() {
    if (dio == null) {
      BaseOptions options = BaseOptions(
          baseUrl: Api.BASE_URL,
          connectTimeout: connectTimeOut,
          receiveTimeout: receiveTimeout,
          contentType: Headers.formUrlEncodedContentType,
          responseType: ResponseType.plain);
      dio = Dio(options);
      dio?.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90));
    }
  }

  static getInstance() {
    _instance ??= Net.init();
    return _instance;
  }

  get(url, {data, options, cancelToken}) async {
    Response? response;
    try {
      response = await dio?.get(url,
          queryParameters: data, options: options, cancelToken: cancelToken);
    } on DioError catch (e) {
      formatError(e);
    }
    return response;
  }

  post(url, {data, options, cancelToken}) async {
    Response? response;
    try {
      response = await dio?.post(url,
          queryParameters: data, options: options, cancelToken: cancelToken);
    } on DioError catch (e) {
      formatError(e);
    }
    return response?.data;
  }

  void cancelRequests(CancelToken token) {
    token.cancel("cancelled");
  }

  void formatError(DioError e) {
    if (e.type == DioErrorType.connectTimeout) {
      print("连接超时");
    } else if (e.type == DioErrorType.sendTimeout) {
      // It occurs when url is sent timeout.
      print("请求超时");
    } else if (e.type == DioErrorType.receiveTimeout) {
      //It occurs when receiving timeout
      print("响应超时");
    } else if (e.type == DioErrorType.other) {
      // When the server response, but with a incorrect status, such as 404, 503...
      print("出现异常");
    } else if (e.type == DioErrorType.cancel) {
      // When the request is cancelled, dio will throw a error with this type.
      print("请求取消");
    }
  }
}
