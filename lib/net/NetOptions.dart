import 'package:dio/dio.dart';

import 'Config.dart';
import 'LoggerInterceptor.dart';
import 'NetConfig.dart';

typedef onSuccess = void Function(dynamic t);
typedef onFailure = void Function(int code);

class NetOptions extends Config {
  static final instance = NetOptions._();

  NetOptions._() : _netConfig = NetConfig();
  final NetConfig _netConfig;

  final Dio _dio = Dio();

  Dio get dio => _dio;

  void create() {
    if (_netConfig.interceptors?.isNotEmpty ?? false) {
      _dio.interceptors.addAll(_netConfig.interceptors!);
    }
    if (_netConfig.enableLogger) {
      _dio.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90));
    }
    _dio.options = BaseOptions(
        baseUrl: _netConfig.baseUrl,
        connectTimeout: _netConfig.connectTimeout,
        receiveTimeout: _netConfig.receiveTimeout,
        responseType: ResponseType.plain);
  }

  @override
  NetOptions setBaseUrl(String baseUrl) {
    _netConfig.setBaseUrl(baseUrl);
    return this;
  }

  @override
  NetOptions setConnectTimeout(Duration connectTimeout) {
    _netConfig.setConnectTimeout(connectTimeout);
    return this;
  }

  @override
  NetOptions setReceiveTimeout(Duration receiveTimeout) {
    _netConfig.setReceiveTimeout(receiveTimeout);
    return this;
  }

  @override
  NetOptions enableLogger(bool b) {
    _netConfig.enable(b);
    return this;
  }

  @override
  NetOptions addInterceptor(Interceptor interceptor) {
    _netConfig.addInterceptor(interceptor);
    return this;
  }
}
