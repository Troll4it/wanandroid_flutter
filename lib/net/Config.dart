import 'package:dio/dio.dart';

import 'NetOptions.dart';

abstract class Config {
  NetOptions setBaseUrl(String baseUrl);

  NetOptions setReceiveTimeout(Duration receiveTimeout);

  NetOptions setConnectTimeout(Duration sendTimeout);

  NetOptions enableLogger(bool b);

  NetOptions addInterceptor(Interceptor interceptor);
}
