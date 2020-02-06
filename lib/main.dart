import 'package:flutter/widgets.dart';
import 'package:flutter_boilerplate/app.dart';

import 'package:provider/provider.dart';

import 'package:flutter_boilerplate/provider_setup.dart';

void main() => runApp(MultiProvider(providers: providers, child: App()));
