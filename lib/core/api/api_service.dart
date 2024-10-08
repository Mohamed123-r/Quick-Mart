import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<Response> post(
      {required String url,
        required Map<String, dynamic> data,
        required String token,
        String? contentType , Map<String, dynamic>? headers}) async {
    final response = await dio.post(
      url,
      data: data,
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: headers ?? {
          'Authorization': 'Bearer $token',
        },
      ),
    );
    return response;
  }
}
