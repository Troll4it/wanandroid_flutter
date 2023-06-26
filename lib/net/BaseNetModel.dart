abstract class BaseNetModel<T> {
  dynamic fromJson(Map<String, dynamic> json);
}


class ResponseCode {
  static const int SUCCESS = 200;
  static const int FUILURE = 0;
}
