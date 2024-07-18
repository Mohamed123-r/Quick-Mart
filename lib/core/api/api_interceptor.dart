import 'package:dio/dio.dart';
import 'package:quick_mart/core/api/api_keys.dart';
import '../database/cache/cache_helper.dart';


class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    options.headers['token'] = CacheHelper().getData(key: ApiKeys.token) != null
        ? 'FOODAPI ${CacheHelper().getData(key: ApiKeys.token)}'
        : null;
  }
}
