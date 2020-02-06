import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/core/models/user_model.dart';
import 'package:flutter_boilerplate/core/services/user_service.dart';
import 'package:flutter_boilerplate/core/viewmodels/base_model.dart';

class UserViewModel extends BaseModel {
  UserService _userService;

  UserViewModel({@required UserService userService})
      : _userService = userService;

  Future<User> register(Map<String, String> data) async {
    setBusy(true);
    User user = await _userService.register(data);
    setBusy(false);

    return user;
  }
}
