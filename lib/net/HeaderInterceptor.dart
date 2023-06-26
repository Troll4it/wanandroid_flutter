import 'package:dio/dio.dart';

class HeaderInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print("HeaderInterceptor");
    options.headers = {
      "Authorization":
          '{       "prdId": "150209",       "prdid": "150209",       "signatureD": "eMTxTKEPyqpl5X4SUC1pEtBWfkdKi1VHRdpNk6zHBo8=",       "timestamp": 1687153919368,       "signature": "0b65a0684ebb7db465446347195e543c",       "adPlatform": "android",       "platform": "android",       "version": "2.28.9.1",       "versionCode": 22891,       "appVesion": "2.0.1",       "appVersion": "2.0.1",       "appVersionCode": 201,       "cversion": "201",       "cversionname": "2.0.1",       "sysVersion": "12",       "sys": "12",       "phoneType": "M2104K10AC",       "brand": "Redmi",       "activityChannel": "94",       "currentChannel": "94",       "channel": "94",       "mobileName": "M2104K10AC",       "startFrom": "index",       "token": "",       "access_token": "",       "qaid": "e11c6c627e50ac26",       "ua": "Mozilla\/5.0 (Linux; Android 12; M2104K10AC Build\/SP1A.210812.016; wv) AppleWebKit\/537.36 (KHTML, like Gecko) Version\/4.0 Chrome\/96.0.4664.104 Mobile Safari\/537.36",       "networkType": "WIFI",       "romVersionName": "xiaomi-V13.0.11.0.SKPCNXM",       "packageName": "com.anticipandroid.server.ctsclasses",       "unimportantId": "DUDVkBdRCdPi6exzcjC8FoohMGe1IBOFPSab",       "noahVersionName": "6.0.0.5.1",       "noahVersionCode": 60051,       "pversionCode": 1     }'
    };
    handler.next(options);
  }
}
