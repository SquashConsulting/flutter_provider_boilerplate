import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/core/api/api.dart';
import 'package:flutter_boilerplate/core/models/user_model.dart';

class UserApi extends BaseApi {
  Future<User> registerUser(Map<String, String> data) async {
    Response response = await dio.post("/users", data: data);

    return User.fromJson(response.data);
  }
}
