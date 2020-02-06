import 'package:dio/dio.dart';

class BaseApi {
  Dio dio = Dio(options);

  static BaseOptions options = BaseOptions(
    baseUrl: "https://5e1c6acedb8a52001414cedb.mockapi.io/api",
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
}
