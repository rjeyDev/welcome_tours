import 'package:dio/dio.dart';
import 'package:welcome_tours/application/data/remote/api/http_config.dart';

import 'http_response.dart';

class HttpService {
  late Dio dio;
  HttpService() {
    dio = Dio();
  }

  Map<String, String> headers = {
    'Content-Type': 'application/json; charset=utf-8',
  };

  Future<HttpResponse> get({required String url, String urlParams = ''}) async {
    final response = await dio.get(
      url + urlParams,
      options: Options(
        followRedirects: false,
        validateStatus: (status) => true,
        headers: headers,
      ),
    );

    if (response.statusCode == StatusCode.success) {
      return SuccessResponse(data: response.data);
    } else {
      return FailResponse(
        statusMessage: response.statusMessage ?? 'Not Found',
        code: response.statusCode ?? 404,
      );
    }
  }
}
