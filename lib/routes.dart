import 'package:flutter/widgets.dart';
import 'package:flutter_boilerplate/ui/screens/login/signup.dart';

class Router {
  Router._();

  static const String login = '/signup';
  static const String home = '/home';
  static const String posts = '/posts';

  static final routes = <String, WidgetBuilder>{
    login: (BuildContext context) => SignupScreen()
  };
}
