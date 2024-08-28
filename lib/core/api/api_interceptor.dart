import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    options.headers['token'] = null;
    options.headers['lang'] = 'en';
    options.headers['Authorization'] =
        '3NpzKKAKzPdG3fKA0vip8xg3optgKeCmpXBG6aa48TIg2dha7mtcSQyVv24iITLBadAyLU';
  }
}
