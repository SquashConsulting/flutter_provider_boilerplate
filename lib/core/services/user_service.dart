import 'dart:async';

import 'package:flutter_boilerplate/core/api/user_api.dart';
import 'package:flutter_boilerplate/core/models/user_model.dart';

class UserService {
  final UserApi _userApi;

  UserService({UserApi userApi}) : _userApi = userApi;

  StreamController<User> _userController = StreamController<User>();

  Stream<User> get user => _userController.stream;

  Future<User> register(Map<String, String> data) async {
    User user = await _userApi.registerUser(data);

    if (user != null) {
      _userController.add(user);
    }

    print(user);

    return user;
  }

  dispose() {
    _userController.close();
  }
}
