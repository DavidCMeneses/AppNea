import 'package:appnea/routers/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'globals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp,DeviceOrientation.portraitDown])
        .then((_) => runApp(const MyApp()),
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: blanco),
          routerConfig: router,
    );
  }
}
