import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Flutter Slidy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        backgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0
        )
      ),
      initialRoute: '/fidelity',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
