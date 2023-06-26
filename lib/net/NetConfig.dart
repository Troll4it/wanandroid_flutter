import 'package:dio/dio.dart';

class NetConfig {
  String? _baseUrl;

  get baseUrl => _baseUrl ?? "";

  Duration? _connectTimeout;

  Duration get connectTimeout => _connectTimeout ?? const Duration(seconds: 15);

  Duration? _receiveTimeout;

  Duration get receiveTimeout => _receiveTimeout ?? const Duration(seconds: 15);

  bool? _enable;

  bool get enableLogger => _enable ?? false;

  Map<String, dynamic>? _headers;

  Map<String, dynamic>? get heads => _headers;

  List<Interceptor>? _interceptors;

  List<Interceptor>? get interceptors => _interceptors;

  setBaseUrl(String baseUrl) {
    _baseUrl = baseUrl;
  }

  setConnectTimeout(Duration connectTimeout) {
    _connectTimeout = connectTimeout;
  }

  setReceiveTimeout(Duration receiveTimeout) {
    _receiveTimeout = receiveTimeout;
  }

  enable(bool enable) {
    _enable = enable;
  }

  addHeaders(Map<String, dynamic> headers) {
    _headers = headers;
  }

  addInterceptor(Interceptor interceptor) {
    _interceptors ??= [];
    _interceptors?.add(interceptor);
  }
}
