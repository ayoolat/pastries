import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pastries/routes.dart';

class Pastries extends StatelessWidget {
  const Pastries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      title: 'Pastries',
      theme: ThemeData.light(),
      navigatorKey: AppNavigator.navigatorKey,
      onGenerateRoute: AppNavigator.onGenerateRoute,
    );
  }
}
