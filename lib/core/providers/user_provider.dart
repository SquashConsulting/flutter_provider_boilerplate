import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'package:flutter_boilerplate/core/api/user_api.dart';
import 'package:flutter_boilerplate/core/models/user_model.dart';
import 'package:flutter_boilerplate/core/services/user_service.dart';

List<SingleChildWidget> independentUserSrevices = [
  Provider.value(value: UserApi())
];

List<SingleChildWidget> dependentUserSrevices = [
  ProxyProvider<UserApi, UserService>(
    create: (context) => UserService(),
    update: (context, userApi, userService) => UserService(userApi: userApi),
    dispose: (context, userService) => userService.dispose(),
  )
];

List<SingleChildWidget> uiUserProviders = [
  StreamProvider<User>(
    create: (context) => Provider.of<UserService>(context, listen: false).user,
  )
];

List<SingleChildWidget> userProviders = [
  ...independentUserSrevices,
  ...dependentUserSrevices,
  ...uiUserProviders,
];
