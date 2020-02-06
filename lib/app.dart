import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/routes.dart';
import 'package:flutter_boilerplate/ui/utils/colors.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Boilerplate",
      color: UIColors.main,
      routes: Router.routes,
      initialRoute: Router.login,
    );
  }
}
